
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int nConst; TYPE_3__** apExpr; TYPE_1__* pParse; } ;
typedef TYPE_2__ WhereConst ;
struct TYPE_12__ {scalar_t__ op; scalar_t__ iTable; scalar_t__ iColumn; struct TYPE_12__* pLeft; } ;
struct TYPE_10__ {int db; } ;
typedef TYPE_3__ Expr ;


 int EP_FixedCol ;
 scalar_t__ ExprHasProperty (TYPE_3__*,int ) ;
 scalar_t__ TK_COLUMN ;
 int assert (int) ;
 TYPE_3__** sqlite3DbReallocOrFree (int ,TYPE_3__**,int) ;

__attribute__((used)) static void constInsert(
  WhereConst *pConst,
  Expr *pColumn,
  Expr *pValue
){
  int i;
  assert( pColumn->op==TK_COLUMN );



  for(i=0; i<pConst->nConst; i++){
    const Expr *pExpr = pConst->apExpr[i*2];
    assert( pExpr->op==TK_COLUMN );
    if( pExpr->iTable==pColumn->iTable
     && pExpr->iColumn==pColumn->iColumn
    ){
      return;
    }
  }

  pConst->nConst++;
  pConst->apExpr = sqlite3DbReallocOrFree(pConst->pParse->db, pConst->apExpr,
                         pConst->nConst*2*sizeof(Expr*));
  if( pConst->apExpr==0 ){
    pConst->nConst = 0;
  }else{
    if( ExprHasProperty(pValue, EP_FixedCol) ) pValue = pValue->pLeft;
    pConst->apExpr[pConst->nConst*2-2] = pColumn;
    pConst->apExpr[pConst->nConst*2-1] = pValue;
  }
}
