
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ op; int iRightJoinTable; struct TYPE_21__* pLeft; struct TYPE_21__* pRight; } ;
struct TYPE_20__ {int db; } ;
struct TYPE_19__ {int selFlags; scalar_t__ pLimit; struct TYPE_19__* pPrior; void* pWhere; void* pHaving; int pEList; scalar_t__ pWin; } ;
struct TYPE_18__ {int iTable; int iNewTable; int pEList; scalar_t__ isLeftJoin; TYPE_3__* pParse; } ;
typedef TYPE_1__ SubstContext ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int ) ;
 int SF_Aggregate ;
 int SF_Recursive ;
 scalar_t__ TK_AND ;
 int assert (int) ;
 void* sqlite3ExprAnd (TYPE_3__*,void*,TYPE_4__*) ;
 TYPE_4__* sqlite3ExprDup (int ,TYPE_4__*,int ) ;
 scalar_t__ sqlite3ExprIsTableConstant (TYPE_4__*,int) ;
 TYPE_4__* substExpr (TYPE_1__*,TYPE_4__*) ;
 int unsetJoinExpr (TYPE_4__*,int) ;

__attribute__((used)) static int pushDownWhereTerms(
  Parse *pParse,
  Select *pSubq,
  Expr *pWhere,
  int iCursor,
  int isLeftJoin
){
  Expr *pNew;
  int nChng = 0;
  if( pWhere==0 ) return 0;
  if( pSubq->selFlags & SF_Recursive ) return 0;


  if( pSubq->pWin ) return 0;
  if( pSubq->pLimit!=0 ){
    return 0;
  }
  while( pWhere->op==TK_AND ){
    nChng += pushDownWhereTerms(pParse, pSubq, pWhere->pRight,
                                iCursor, isLeftJoin);
    pWhere = pWhere->pLeft;
  }
  if( isLeftJoin
   && (ExprHasProperty(pWhere,EP_FromJoin)==0
         || pWhere->iRightJoinTable!=iCursor)
  ){
    return 0;
  }
  if( ExprHasProperty(pWhere,EP_FromJoin) && pWhere->iRightJoinTable!=iCursor ){
    return 0;
  }
  if( sqlite3ExprIsTableConstant(pWhere, iCursor) ){
    nChng++;
    while( pSubq ){
      SubstContext x;
      pNew = sqlite3ExprDup(pParse->db, pWhere, 0);
      unsetJoinExpr(pNew, -1);
      x.pParse = pParse;
      x.iTable = iCursor;
      x.iNewTable = iCursor;
      x.isLeftJoin = 0;
      x.pEList = pSubq->pEList;
      pNew = substExpr(&x, pNew);
      if( pSubq->selFlags & SF_Aggregate ){
        pSubq->pHaving = sqlite3ExprAnd(pParse, pSubq->pHaving, pNew);
      }else{
        pSubq->pWhere = sqlite3ExprAnd(pParse, pSubq->pWhere, pNew);
      }
      pSubq = pSubq->pPrior;
    }
  }
  return nChng;
}
