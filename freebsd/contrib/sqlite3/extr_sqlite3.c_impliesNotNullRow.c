
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int iCur; } ;
struct TYPE_13__ {int eCode; TYPE_1__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_12__ {int pTab; } ;
struct TYPE_15__ {int const op; TYPE_2__ y; } ;
struct TYPE_14__ {int op; TYPE_6__* pRight; TYPE_6__* pLeft; int iTable; } ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int ) ;
 int IsVirtual (int ) ;
 int TK_AGG_COLUMN ;
 int TK_AGG_FUNCTION ;
 int WRC_Abort ;
 int WRC_Continue ;
 int WRC_Prune ;
 int sqlite3ExprImpliesNonNullRow (TYPE_6__*,int ) ;
 int sqlite3WalkExpr (TYPE_3__*,TYPE_6__*) ;
 int testcase (int) ;

__attribute__((used)) static int impliesNotNullRow(Walker *pWalker, Expr *pExpr){
  testcase( pExpr->op==TK_AGG_COLUMN );
  testcase( pExpr->op==TK_AGG_FUNCTION );
  if( ExprHasProperty(pExpr, EP_FromJoin) ) return WRC_Prune;
  switch( pExpr->op ){
    case 135:
    case 134:
    case 130:
    case 136:
    case 129:
    case 143:
    case 137:
    case 140:
    case 128:
      testcase( pExpr->op==135 );
      testcase( pExpr->op==134 );
      testcase( pExpr->op==130 );
      testcase( pExpr->op==136 );
      testcase( pExpr->op==129 );
      testcase( pExpr->op==143 );
      testcase( pExpr->op==137 );
      testcase( pExpr->op==140 );
      testcase( pExpr->op==128 );
      return WRC_Prune;
    case 142:
      if( pWalker->u.iCur==pExpr->iTable ){
        pWalker->eCode = 1;
        return WRC_Abort;
      }
      return WRC_Prune;

    case 145:
      if( sqlite3ExprImpliesNonNullRow(pExpr->pLeft, pWalker->u.iCur)
       && sqlite3ExprImpliesNonNullRow(pExpr->pRight, pWalker->u.iCur)
      ){
        pWalker->eCode = 1;
      }
      return WRC_Prune;

    case 144:
      sqlite3WalkExpr(pWalker, pExpr->pLeft);
      return WRC_Prune;




    case 141:
    case 131:
    case 132:
    case 133:
    case 138:
    case 139:
      testcase( pExpr->op==141 );
      testcase( pExpr->op==131 );
      testcase( pExpr->op==132 );
      testcase( pExpr->op==133 );
      testcase( pExpr->op==138 );
      testcase( pExpr->op==139 );
      if( (pExpr->pLeft->op==142 && IsVirtual(pExpr->pLeft->y.pTab))
       || (pExpr->pRight->op==142 && IsVirtual(pExpr->pRight->y.pTab))
      ){
       return WRC_Prune;
      }

    default:
      return WRC_Continue;
  }
}
