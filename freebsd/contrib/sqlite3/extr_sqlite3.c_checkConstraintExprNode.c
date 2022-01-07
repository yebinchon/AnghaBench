
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* aiCol; } ;
struct TYPE_7__ {int eCode; TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
struct TYPE_8__ {scalar_t__ op; int iColumn; } ;
typedef TYPE_3__ Expr ;


 int CKCNSTRNT_COLUMN ;
 int CKCNSTRNT_ROWID ;
 scalar_t__ TK_COLUMN ;
 int WRC_Continue ;
 int assert (int) ;

__attribute__((used)) static int checkConstraintExprNode(Walker *pWalker, Expr *pExpr){
  if( pExpr->op==TK_COLUMN ){
    assert( pExpr->iColumn>=0 || pExpr->iColumn==-1 );
    if( pExpr->iColumn>=0 ){
      if( pWalker->u.aiCol[pExpr->iColumn]>=0 ){
        pWalker->eCode |= CKCNSTRNT_COLUMN;
      }
    }else{
      pWalker->eCode |= CKCNSTRNT_ROWID;
    }
  }
  return WRC_Continue;
}
