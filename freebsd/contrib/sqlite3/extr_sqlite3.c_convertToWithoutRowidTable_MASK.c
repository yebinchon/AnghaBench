#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ busy; int /*<<< orphan*/  imposterTable; } ;
struct TYPE_28__ {TYPE_3__ init; scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_29__ {int nCol; size_t iPKey; scalar_t__ tnum; TYPE_7__* pIndex; int /*<<< orphan*/  keyConf; TYPE_1__* aCol; } ;
typedef  TYPE_5__ Table ;
struct TYPE_32__ {TYPE_2__* a; } ;
struct TYPE_31__ {int nKeyCol; int nColumn; int* aiColumn; int isCovering; int uniqNotNull; scalar_t__ tnum; int bAscKeyBug; int /*<<< orphan*/ * azColl; scalar_t__* aSortOrder; struct TYPE_31__* pNext; } ;
struct TYPE_30__ {scalar_t__ nErr; TYPE_5__* pNewTable; int /*<<< orphan*/  iPkSortOrder; scalar_t__ addrCrTab; int /*<<< orphan*/ * pVdbe; TYPE_4__* db; } ;
struct TYPE_26__ {int /*<<< orphan*/  sortFlags; int /*<<< orphan*/  pExpr; } ;
struct TYPE_25__ {int colFlags; int /*<<< orphan*/  zName; int /*<<< orphan*/  notNull; } ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ Index ;
typedef  TYPE_8__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_BLOBKEY ; 
 int COLFLAG_PRIMKEY ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  OE_Abort ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  SQLITE_IDXTYPE_PRIMARYKEY ; 
 int /*<<< orphan*/  TK_ID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_7__*,int,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  sqlite3StrBINARY ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(Parse *pParse, Table *pTab){
  Index *pIdx;
  Index *pPk;
  int nPk;
  int nExtra;
  int i, j;
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;

  /* Mark every PRIMARY KEY column as NOT NULL (except for imposter tables)
  */
  if( !db->init.imposterTable ){
    for(i=0; i<pTab->nCol; i++){
      if( (pTab->aCol[i].colFlags & COLFLAG_PRIMKEY)!=0 ){
        pTab->aCol[i].notNull = OE_Abort;
      }
    }
  }

  /* Convert the P3 operand of the OP_CreateBtree opcode from BTREE_INTKEY
  ** into BTREE_BLOBKEY.
  */
  if( pParse->addrCrTab ){
    FUNC1( *v );
    FUNC13(v, pParse->addrCrTab, BTREE_BLOBKEY);
  }

  /* Locate the PRIMARY KEY index.  Or, if this table was originally
  ** an INTEGER PRIMARY KEY table, create a new PRIMARY KEY index. 
  */
  if( pTab->iPKey>=0 ){
    ExprList *pList;
    Token ipkToken;
    FUNC11(&ipkToken, pTab->aCol[pTab->iPKey].zName);
    pList = FUNC8(pParse, 0, 
                  FUNC7(db, TK_ID, &ipkToken, 0));
    if( pList==0 ) return;
    if( IN_RENAME_OBJECT ){
      FUNC10(pParse, pList->a[0].pExpr, &pTab->iPKey);
    }
    pList->a[0].sortFlags = pParse->iPkSortOrder;
    FUNC1( pParse->pNewTable==pTab );
    pTab->iPKey = -1;
    FUNC6(pParse, 0, 0, 0, pList, pTab->keyConf, 0, 0, 0, 0,
                       SQLITE_IDXTYPE_PRIMARYKEY);
    if( db->mallocFailed || pParse->nErr ) return;
    pPk = FUNC9(pTab);
    FUNC1( pPk->nKeyCol==1 );
  }else{
    pPk = FUNC9(pTab);
    FUNC1( pPk!=0 );

    /*
    ** Remove all redundant columns from the PRIMARY KEY.  For example, change
    ** "PRIMARY KEY(a,b,a,b,c,b,c,d)" into just "PRIMARY KEY(a,b,c,d)".  Later
    ** code assumes the PRIMARY KEY contains no repeated columns.
    */
    for(i=j=1; i<pPk->nKeyCol; i++){
      if( FUNC3(pPk, j, pPk, i) ){
        pPk->nColumn--;
      }else{
        FUNC14( FUNC2(pPk->aiColumn, j, pPk->aiColumn[i]) );
        pPk->azColl[j] = pPk->azColl[i];
        pPk->aSortOrder[j] = pPk->aSortOrder[i];
        pPk->aiColumn[j++] = pPk->aiColumn[i];
      }
    }
    pPk->nKeyCol = j;
  }
  FUNC1( pPk!=0 );
  pPk->isCovering = 1;
  if( !db->init.imposterTable ) pPk->uniqNotNull = 1;
  nPk = pPk->nColumn = pPk->nKeyCol;

  /* Bypass the creation of the PRIMARY KEY btree and the sqlite_master
  ** table entry. This is only required if currently generating VDBE
  ** code for a CREATE TABLE (not when parsing one as part of reading
  ** a database schema).  */
  if( v && pPk->tnum>0 ){
    FUNC1( db->init.busy==0 );
    FUNC12(v, pPk->tnum, OP_Goto);
  }

  /* The root page of the PRIMARY KEY is the table root page */
  pPk->tnum = pTab->tnum;

  /* Update the in-memory representation of all UNIQUE indices by converting
  ** the final rowid column into one or more columns of the PRIMARY KEY.
  */
  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    int n;
    if( FUNC0(pIdx) ) continue;
    for(i=n=0; i<nPk; i++){
      if( !FUNC3(pIdx, pIdx->nKeyCol, pPk, i) ){
        FUNC14( FUNC2(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) );
        n++;
      }
    }
    if( n==0 ){
      /* This index is a superset of the primary key */
      pIdx->nColumn = pIdx->nKeyCol;
      continue;
    }
    if( FUNC5(db, pIdx, pIdx->nKeyCol+n) ) return;
    for(i=0, j=pIdx->nKeyCol; i<nPk; i++){
      if( !FUNC3(pIdx, pIdx->nKeyCol, pPk, i) ){
        FUNC14( FUNC2(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) );
        pIdx->aiColumn[j] = pPk->aiColumn[i];
        pIdx->azColl[j] = pPk->azColl[i];
        if( pPk->aSortOrder[i] ){
          /* See ticket https://www.sqlite.org/src/info/bba7b69f9849b5bf */
          pIdx->bAscKeyBug = 1;
        }
        j++;
      }
    }
    FUNC1( pIdx->nColumn>=pIdx->nKeyCol+n );
    FUNC1( pIdx->nColumn>=j );
  }

  /* Add all table columns to the PRIMARY KEY index
  */
  nExtra = 0;
  for(i=0; i<pTab->nCol; i++){
    if( !FUNC2(pPk->aiColumn, nPk, i) ) nExtra++;
  }
  if( FUNC5(db, pPk, nPk+nExtra) ) return;
  for(i=0, j=nPk; i<pTab->nCol; i++){
    if( !FUNC2(pPk->aiColumn, j, i) ){
      FUNC1( j<pPk->nColumn );
      pPk->aiColumn[j] = i;
      pPk->azColl[j] = sqlite3StrBINARY;
      j++;
    }
  }
  FUNC1( pPk->nColumn==j );
  FUNC1( pTab->nCol<=j );
  FUNC4(pPk);
}