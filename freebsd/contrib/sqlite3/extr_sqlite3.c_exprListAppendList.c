
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ op; int flags; } ;
struct TYPE_16__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {int sortFlags; int pExpr; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;
typedef TYPE_4__ Expr ;


 int EP_IntValue ;
 int EP_IsFalse ;
 int EP_IsTrue ;
 scalar_t__ TK_INTEGER ;
 scalar_t__ TK_NULL ;
 TYPE_4__* sqlite3ExprDup (int ,int ,int ) ;
 TYPE_3__* sqlite3ExprListAppend (TYPE_2__*,TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static ExprList *exprListAppendList(
  Parse *pParse,
  ExprList *pList,
  ExprList *pAppend,
  int bIntToNull
){
  if( pAppend ){
    int i;
    int nInit = pList ? pList->nExpr : 0;
    for(i=0; i<pAppend->nExpr; i++){
      Expr *pDup = sqlite3ExprDup(pParse->db, pAppend->a[i].pExpr, 0);
      if( bIntToNull && pDup && pDup->op==TK_INTEGER ){
        pDup->op = TK_NULL;
        pDup->flags &= ~(EP_IntValue|EP_IsTrue|EP_IsFalse);
      }
      pList = sqlite3ExprListAppend(pParse, pList, pDup);
      if( pList ) pList->a[nInit+i].sortFlags = pAppend->a[i].sortFlags;
    }
  }
  return pList;
}
