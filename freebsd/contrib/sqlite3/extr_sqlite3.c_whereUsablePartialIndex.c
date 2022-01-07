
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int wtFlags; TYPE_6__* pExpr; } ;
typedef TYPE_3__ WhereTerm ;
struct TYPE_16__ {int nTerm; TYPE_3__* a; TYPE_1__* pWInfo; } ;
typedef TYPE_4__ WhereClause ;
struct TYPE_18__ {scalar_t__ op; int iRightJoinTable; struct TYPE_18__* pRight; struct TYPE_18__* pLeft; } ;
struct TYPE_17__ {TYPE_2__* db; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {TYPE_5__* pParse; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ Expr ;


 int EP_FromJoin ;
 int ExprHasProperty (TYPE_6__*,int ) ;
 int SQLITE_EnableQPSG ;
 int TERM_NOPARTIDX ;
 scalar_t__ TK_AND ;
 scalar_t__ sqlite3ExprImpliesExpr (TYPE_5__*,TYPE_6__*,TYPE_6__*,int) ;

__attribute__((used)) static int whereUsablePartialIndex(int iTab, WhereClause *pWC, Expr *pWhere){
  int i;
  WhereTerm *pTerm;
  Parse *pParse = pWC->pWInfo->pParse;
  while( pWhere->op==TK_AND ){
    if( !whereUsablePartialIndex(iTab,pWC,pWhere->pLeft) ) return 0;
    pWhere = pWhere->pRight;
  }
  if( pParse->db->flags & SQLITE_EnableQPSG ) pParse = 0;
  for(i=0, pTerm=pWC->a; i<pWC->nTerm; i++, pTerm++){
    Expr *pExpr;
    if( pTerm->wtFlags & TERM_NOPARTIDX ) continue;
    pExpr = pTerm->pExpr;
    if( (!ExprHasProperty(pExpr, EP_FromJoin) || pExpr->iRightJoinTable==iTab)
     && sqlite3ExprImpliesExpr(pParse, pExpr, pWhere, iTab)
    ){
      return 1;
    }
  }
  return 0;
}
