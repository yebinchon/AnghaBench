
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_32__ {int mallocFailed; } ;
typedef TYPE_5__ sqlite3 ;
struct TYPE_31__ {TYPE_3__* pWin; } ;
struct TYPE_29__ {int zToken; } ;
struct TYPE_35__ {scalar_t__ op; int flags; TYPE_4__ y; TYPE_2__ u; } ;
struct TYPE_34__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_33__ {TYPE_5__* db; } ;
struct TYPE_30__ {TYPE_8__* pOwner; } ;
struct TYPE_28__ {TYPE_8__* pExpr; } ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ ExprList ;
typedef TYPE_8__ Expr ;


 int EP_Alias ;
 int EP_IntValue ;
 int EP_MemToken ;
 int EP_Reduced ;
 int EP_Static ;
 int EP_TokenOnly ;
 int EP_WinFunc ;
 scalar_t__ ExprHasProperty (TYPE_8__*,int ) ;
 int ExprSetProperty (TYPE_8__*,int ) ;
 scalar_t__ TK_COLLATE ;
 int assert (int) ;
 int incrAggFunctionDepth (TYPE_8__*,int) ;
 int memcpy (TYPE_8__*,TYPE_8__*,int) ;
 int sqlite3DbFree (TYPE_5__*,TYPE_8__*) ;
 int sqlite3DbStrDup (TYPE_5__*,int ) ;
 TYPE_8__* sqlite3ExprAddCollateString (TYPE_6__*,TYPE_8__*,int ) ;
 int sqlite3ExprDelete (TYPE_5__*,TYPE_8__*) ;
 TYPE_8__* sqlite3ExprDup (TYPE_5__*,TYPE_8__*,int ) ;

__attribute__((used)) static void resolveAlias(
  Parse *pParse,
  ExprList *pEList,
  int iCol,
  Expr *pExpr,
  const char *zType,
  int nSubquery
){
  Expr *pOrig;
  Expr *pDup;
  sqlite3 *db;

  assert( iCol>=0 && iCol<pEList->nExpr );
  pOrig = pEList->a[iCol].pExpr;
  assert( pOrig!=0 );
  db = pParse->db;
  pDup = sqlite3ExprDup(db, pOrig, 0);
  if( pDup!=0 ){
    if( zType[0]!='G' ) incrAggFunctionDepth(pDup, nSubquery);
    if( pExpr->op==TK_COLLATE ){
      pDup = sqlite3ExprAddCollateString(pParse, pDup, pExpr->u.zToken);
    }
    ExprSetProperty(pExpr, EP_Static);
    sqlite3ExprDelete(db, pExpr);
    memcpy(pExpr, pDup, sizeof(*pExpr));
    if( !ExprHasProperty(pExpr, EP_IntValue) && pExpr->u.zToken!=0 ){
      assert( (pExpr->flags & (EP_Reduced|EP_TokenOnly))==0 );
      pExpr->u.zToken = sqlite3DbStrDup(db, pExpr->u.zToken);
      pExpr->flags |= EP_MemToken;
    }
    if( ExprHasProperty(pExpr, EP_WinFunc) ){
      if( pExpr->y.pWin!=0 ){
        pExpr->y.pWin->pOwner = pExpr;
      }else{
        assert( db->mallocFailed );
      }
    }
    sqlite3DbFree(db, pDup);
  }
  ExprSetProperty(pExpr, EP_Alias);
}
