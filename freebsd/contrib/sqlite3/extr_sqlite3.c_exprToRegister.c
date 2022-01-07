
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iTable; int op; int op2; } ;
typedef TYPE_1__ Expr ;


 int EP_Skip ;
 int ExprClearProperty (TYPE_1__*,int ) ;
 int TK_REGISTER ;
 TYPE_1__* sqlite3ExprSkipCollateAndLikely (TYPE_1__*) ;

__attribute__((used)) static void exprToRegister(Expr *pExpr, int iReg){
  Expr *p = sqlite3ExprSkipCollateAndLikely(pExpr);
  p->op2 = p->op;
  p->op = TK_REGISTER;
  p->iTable = iReg;
  ExprClearProperty(p, EP_Skip);
}
