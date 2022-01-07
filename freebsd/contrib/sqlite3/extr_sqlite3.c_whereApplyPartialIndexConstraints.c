
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wtFlags; TYPE_3__* pExpr; } ;
typedef TYPE_1__ WhereTerm ;
struct TYPE_9__ {int nTerm; TYPE_1__* a; } ;
typedef TYPE_2__ WhereClause ;
struct TYPE_10__ {scalar_t__ op; struct TYPE_10__* pRight; struct TYPE_10__* pLeft; } ;
typedef TYPE_3__ Expr ;


 int TERM_CODED ;
 scalar_t__ TK_AND ;
 scalar_t__ sqlite3ExprCompare (int ,TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static void whereApplyPartialIndexConstraints(
  Expr *pTruth,
  int iTabCur,
  WhereClause *pWC
){
  int i;
  WhereTerm *pTerm;
  while( pTruth->op==TK_AND ){
    whereApplyPartialIndexConstraints(pTruth->pLeft, iTabCur, pWC);
    pTruth = pTruth->pRight;
  }
  for(i=0, pTerm=pWC->a; i<pWC->nTerm; i++, pTerm++){
    Expr *pExpr;
    if( pTerm->wtFlags & TERM_CODED ) continue;
    pExpr = pTerm->pExpr;
    if( sqlite3ExprCompare(0, pExpr, pTruth, iTabCur)==0 ){
      pTerm->wtFlags |= TERM_CODED;
    }
  }
}
