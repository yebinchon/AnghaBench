#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  ifNullRow ;
struct TYPE_35__ {int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pPartition; TYPE_7__* pFilter; } ;
typedef  TYPE_5__ Window ;
struct TYPE_38__ {char* zName; } ;
struct TYPE_34__ {TYPE_5__* pWin; } ;
struct TYPE_33__ {int /*<<< orphan*/  pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_37__ {scalar_t__ iRightJoinTable; scalar_t__ op; scalar_t__ iTable; size_t iColumn; TYPE_4__ y; TYPE_3__ x; struct TYPE_37__* pRight; struct TYPE_37__* pLeft; } ;
struct TYPE_36__ {scalar_t__ iTable; scalar_t__ iNewTable; TYPE_14__* pParse; scalar_t__ isLeftJoin; TYPE_2__* pEList; } ;
struct TYPE_32__ {size_t nExpr; TYPE_1__* a; } ;
struct TYPE_31__ {TYPE_7__* pExpr; } ;
struct TYPE_30__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_6__ SubstContext ;
typedef  TYPE_7__ Expr ;
typedef  TYPE_8__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  EP_CanBeNull ; 
 int /*<<< orphan*/  EP_Collate ; 
 int /*<<< orphan*/  EP_FromJoin ; 
 int /*<<< orphan*/  EP_Subquery ; 
 int /*<<< orphan*/  EP_WinFunc ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_COLLATE ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_IF_NULL_ROW ; 
 scalar_t__ TK_NULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC5 (TYPE_14__*,TYPE_7__*,char*) ; 
 TYPE_8__* FUNC6 (TYPE_14__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_7__* FUNC8 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_14__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static Expr *FUNC14(
  SubstContext *pSubst,  /* Description of the substitution */
  Expr *pExpr            /* Expr in which substitution occurs */
){
  if( pExpr==0 ) return 0;
  if( FUNC1(pExpr, EP_FromJoin)
   && pExpr->iRightJoinTable==pSubst->iTable
  ){
    pExpr->iRightJoinTable = pSubst->iNewTable;
  }
  if( pExpr->op==TK_COLUMN && pExpr->iTable==pSubst->iTable ){
    if( pExpr->iColumn<0 ){
      pExpr->op = TK_NULL;
    }else{
      Expr *pNew;
      Expr *pCopy = pSubst->pEList->a[pExpr->iColumn].pExpr;
      Expr ifNullRow;
      FUNC3( pSubst->pEList!=0 && pExpr->iColumn<pSubst->pEList->nExpr );
      FUNC3( pExpr->pRight==0 );
      if( FUNC9(pCopy) ){
        FUNC10(pSubst->pParse, pCopy);
      }else{
        sqlite3 *db = pSubst->pParse->db;
        if( pSubst->isLeftJoin && pCopy->op!=TK_COLUMN ){
          FUNC4(&ifNullRow, 0, sizeof(ifNullRow));
          ifNullRow.op = TK_IF_NULL_ROW;
          ifNullRow.pLeft = pCopy;
          ifNullRow.iTable = pSubst->iNewTable;
          pCopy = &ifNullRow;
        }
        FUNC13( FUNC1(pCopy, EP_Subquery) );
        pNew = FUNC8(db, pCopy, 0);
        if( pNew && pSubst->isLeftJoin ){
          FUNC2(pNew, EP_CanBeNull);
        }
        if( pNew && FUNC1(pExpr,EP_FromJoin) ){
          pNew->iRightJoinTable = pExpr->iRightJoinTable;
          FUNC2(pNew, EP_FromJoin);
        }
        FUNC7(db, pExpr);
        pExpr = pNew;

        /* Ensure that the expression now has an implicit collation sequence,
        ** just as it did when it was a column of a view or sub-query. */
        if( pExpr ){
          if( pExpr->op!=TK_COLUMN && pExpr->op!=TK_COLLATE ){
            CollSeq *pColl = FUNC6(pSubst->pParse, pExpr);
            pExpr = FUNC5(pSubst->pParse, pExpr, 
                (pColl ? pColl->zName : "BINARY")
            );
          }
          FUNC0(pExpr, EP_Collate);
        }
      }
    }
  }else{
    if( pExpr->op==TK_IF_NULL_ROW && pExpr->iTable==pSubst->iTable ){
      pExpr->iTable = pSubst->iNewTable;
    }
    pExpr->pLeft = FUNC14(pSubst, pExpr->pLeft);
    pExpr->pRight = FUNC14(pSubst, pExpr->pRight);
    if( FUNC1(pExpr, EP_xIsSelect) ){
      FUNC12(pSubst, pExpr->x.pSelect, 1);
    }else{
      FUNC11(pSubst, pExpr->x.pList);
    }
#ifndef SQLITE_OMIT_WINDOWFUNC
    if( FUNC1(pExpr, EP_WinFunc) ){
      Window *pWin = pExpr->y.pWin;
      pWin->pFilter = FUNC14(pSubst, pWin->pFilter);
      FUNC11(pSubst, pWin->pPartition);
      FUNC11(pSubst, pWin->pOrderBy);
    }
#endif
  }
  return pExpr;
}