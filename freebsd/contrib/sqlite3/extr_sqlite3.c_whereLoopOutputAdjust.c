
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wtFlags; int prereqAll; size_t iParent; scalar_t__ truthProb; int eOperator; TYPE_1__* pExpr; } ;
typedef TYPE_2__ WhereTerm ;
struct TYPE_9__ {int prereq; int maskSelf; int wsFlags; int nLTerm; scalar_t__ nOut; TYPE_2__** aLTerm; } ;
typedef TYPE_3__ WhereLoop ;
struct TYPE_10__ {int nTerm; TYPE_2__* a; } ;
typedef TYPE_4__ WhereClause ;
struct TYPE_7__ {scalar_t__ op; int * pRight; } ;
typedef int LogEst ;
typedef int Expr ;
typedef int Bitmask ;


 int TERM_VIRTUAL ;
 scalar_t__ TK_IS ;
 int WHERE_AUTO_INDEX ;
 int WO_EQ ;
 int WO_IS ;
 int assert (int) ;
 scalar_t__ sqlite3ExprIsInteger (int *,int*) ;
 int testcase (int) ;

__attribute__((used)) static void whereLoopOutputAdjust(
  WhereClause *pWC,
  WhereLoop *pLoop,
  LogEst nRow
){
  WhereTerm *pTerm, *pX;
  Bitmask notAllowed = ~(pLoop->prereq|pLoop->maskSelf);
  int i, j;
  LogEst iReduce = 0;

  assert( (pLoop->wsFlags & WHERE_AUTO_INDEX)==0 );
  for(i=pWC->nTerm, pTerm=pWC->a; i>0; i--, pTerm++){
    assert( pTerm!=0 );
    if( (pTerm->wtFlags & TERM_VIRTUAL)!=0 ) break;
    if( (pTerm->prereqAll & pLoop->maskSelf)==0 ) continue;
    if( (pTerm->prereqAll & notAllowed)!=0 ) continue;
    for(j=pLoop->nLTerm-1; j>=0; j--){
      pX = pLoop->aLTerm[j];
      if( pX==0 ) continue;
      if( pX==pTerm ) break;
      if( pX->iParent>=0 && (&pWC->a[pX->iParent])==pTerm ) break;
    }
    if( j<0 ){
      if( pTerm->truthProb<=0 ){


        pLoop->nOut += pTerm->truthProb;
      }else{


        pLoop->nOut--;
        if( pTerm->eOperator&(WO_EQ|WO_IS) ){
          Expr *pRight = pTerm->pExpr->pRight;
          int k = 0;
          testcase( pTerm->pExpr->op==TK_IS );
          if( sqlite3ExprIsInteger(pRight, &k) && k>=(-1) && k<=1 ){
            k = 10;
          }else{
            k = 20;
          }
          if( iReduce<k ) iReduce = k;
        }
      }
    }
  }
  if( pLoop->nOut > nRow-iReduce ) pLoop->nOut = nRow - iReduce;
}
