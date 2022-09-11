module Main where

import Prelude
import Cardano.Api

import System.Directory
import System.FilePath.Posix ((</>))

import Plutus.Contracts.Game (guessGameScript)

main :: IO ()
main = do
  let dir = "generated-plutus-scripts"
  createDirectory dir

  _ <- writeFileTextEnvelope (dir </> "plutus-example.plutus") Nothing guessGameScript
  return ()