
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eCode; } ;
typedef TYPE_1__ Walker ;
struct TYPE_7__ {scalar_t__ op; } ;
typedef TYPE_2__ Expr ;


 int EP_ConstFunc ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 scalar_t__ TK_FUNCTION ;
 int WRC_Abort ;
 int WRC_Continue ;

__attribute__((used)) static int exprNodeIsDeterministic(Walker *pWalker, Expr *pExpr){
  if( pExpr->op==TK_FUNCTION && ExprHasProperty(pExpr, EP_ConstFunc)==0 ){
    pWalker->eCode = 0;
    return WRC_Abort;
  }
  return WRC_Continue;
}
