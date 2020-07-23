module Test.Golden.Application.Actual where

import Language.PS.CST

import Data.Maybe (Maybe(..))
import Data.Array.NonEmpty as NonEmpty
import Prelude (($))

actualModule :: Module
actualModule = Module
  { moduleName: mkModuleName $ NonEmpty.singleton "Foo"
  , imports: []
  , exports: []
  , declarations:
    [ DeclValue
      { comments: Nothing
      , valueBindingFields:
        { name: Ident "x"
        , binders: []
        , guarded: Unconditional
            { expr:
              nonQualifiedExprIdent "a"
              `ExprApp`
              nonQualifiedExprIdent "b"
              `ExprApp`
              nonQualifiedExprIdent "c"
              `ExprApp`
              nonQualifiedExprIdent "d"
              `ExprApp`
              nonQualifiedExprIdent "e"
              `ExprApp`
              nonQualifiedExprIdent "f"
              `ExprApp`
              nonQualifiedExprIdent "g"
              `ExprApp`
              nonQualifiedExprIdent "h"
            , whereBindings: []
            }
        }
      }
    , DeclValue
      { comments: Nothing
      , valueBindingFields:
        { name: Ident "x"
        , binders: []
        , guarded: Unconditional
            { expr:
              nonQualifiedExprIdent "a"
              `ExprApp`
              nonQualifiedExprIdent "b"
              `ExprApp`
              (
                nonQualifiedExprIdent "c"
                `ExprApp`
                (
                  nonQualifiedExprIdent "d"
                  `ExprApp`
                  nonQualifiedExprIdent "e"
                )
                `ExprApp`
                nonQualifiedExprIdent "f"
                `ExprApp`
                nonQualifiedExprIdent "g"
              )
              `ExprApp`
              nonQualifiedExprIdent "h"
            , whereBindings: []
            }
        }
      }
    ]
  }
