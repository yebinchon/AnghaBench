#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int mallocFailed; } ;
typedef  TYPE_5__ sqlite3 ;
struct TYPE_31__ {TYPE_3__* pWin; } ;
struct TYPE_29__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_35__ {scalar_t__ op; int flags; TYPE_4__ y; TYPE_2__ u; } ;
struct TYPE_34__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_33__ {TYPE_5__* db; } ;
struct TYPE_30__ {TYPE_8__* pOwner; } ;
struct TYPE_28__ {TYPE_8__* pExpr; } ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ ExprList ;
typedef  TYPE_8__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_Alias ; 
 int /*<<< orphan*/  EP_IntValue ; 
 int EP_MemToken ; 
 int EP_Reduced ; 
 int /*<<< orphan*/  EP_Static ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  EP_WinFunc ; 
 scalar_t__ FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_COLLATE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (TYPE_6__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_8__*) ; 
 TYPE_8__* FUNC9 (TYPE_5__*,TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(
  Parse *pParse,         /* Parsing context */
  ExprList *pEList,      /* A result set */
  int iCol,              /* A column in the result set.  0..pEList->nExpr-1 */
  Expr *pExpr,           /* Transform this into an alias to the result set */
  const char *zType,     /* "GROUP" or "ORDER" or "" */
  int nSubquery          /* Number of subqueries that the label is moving */
){
  Expr *pOrig;           /* The iCol-th column of the result set */
  Expr *pDup;            /* Copy of pOrig */
  sqlite3 *db;           /* The database connection */

  FUNC2( iCol>=0 && iCol<pEList->nExpr );
  pOrig = pEList->a[iCol].pExpr;
  FUNC2( pOrig!=0 );
  db = pParse->db;
  pDup = FUNC9(db, pOrig, 0);
  if( pDup!=0 ){
    if( zType[0]!='G' ) FUNC3(pDup, nSubquery);
    if( pExpr->op==TK_COLLATE ){
      pDup = FUNC7(pParse, pDup, pExpr->u.zToken);
    }

    /* Before calling sqlite3ExprDelete(), set the EP_Static flag. This 
    ** prevents ExprDelete() from deleting the Expr structure itself,
    ** allowing it to be repopulated by the memcpy() on the following line.
    ** The pExpr->u.zToken might point into memory that will be freed by the
    ** sqlite3DbFree(db, pDup) on the last line of this block, so be sure to
    ** make a copy of the token before doing the sqlite3DbFree().
    */
    FUNC1(pExpr, EP_Static);
    FUNC8(db, pExpr);
    FUNC4(pExpr, pDup, sizeof(*pExpr));
    if( !FUNC0(pExpr, EP_IntValue) && pExpr->u.zToken!=0 ){
      FUNC2( (pExpr->flags & (EP_Reduced|EP_TokenOnly))==0 );
      pExpr->u.zToken = FUNC6(db, pExpr->u.zToken);
      pExpr->flags |= EP_MemToken;
    }
    if( FUNC0(pExpr, EP_WinFunc) ){
      if( pExpr->y.pWin!=0 ){
        pExpr->y.pWin->pOwner = pExpr;
      }else{
        FUNC2( db->mallocFailed );
      }
    }
    FUNC5(db, pDup);
  }
  FUNC1(pExpr, EP_Alias);
}