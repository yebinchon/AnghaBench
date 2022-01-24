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
typedef  struct TYPE_24__   TYPE_12__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mallocFailed; TYPE_5__* pVtabCtx; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  sParse ;
struct TYPE_29__ {int bDeclared; TYPE_3__* pVTable; TYPE_6__* pTab; } ;
typedef  TYPE_5__ VtabCtx ;
struct TYPE_30__ {int tabFlags; TYPE_8__* pIndex; scalar_t__ aCol; scalar_t__ nCol; int /*<<< orphan*/  pSelect; } ;
typedef  TYPE_6__ Table ;
struct TYPE_32__ {scalar_t__ pNext; TYPE_6__* pTable; } ;
struct TYPE_31__ {int nQueryLoop; TYPE_6__* pNewTable; scalar_t__ pVdbe; int /*<<< orphan*/  eParseMode; TYPE_4__* db; } ;
struct TYPE_27__ {TYPE_2__* pMod; } ;
struct TYPE_26__ {TYPE_1__* pModule; } ;
struct TYPE_25__ {scalar_t__ xUpdate; } ;
struct TYPE_24__ {int nKeyCol; } ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  PARSE_MODE_DECLARE_VTAB ; 
 int /*<<< orphan*/  PARSE_MODE_NORMAL ; 
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int TF_NoVisibleRowid ; 
 int TF_WithoutRowid ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 TYPE_12__* FUNC10 (TYPE_6__*) ; 
 int FUNC11 (TYPE_7__*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(sqlite3 *db, const char *zCreateTable){
  VtabCtx *pCtx;
  int rc = SQLITE_OK;
  Table *pTab;
  char *zErr = 0;
  Parse sParse;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || zCreateTable==0 ){
    return SQLITE_MISUSE_BKPT;
  }
#endif
  FUNC14(db->mutex);
  pCtx = db->pVtabCtx;
  if( !pCtx || pCtx->bDeclared ){
    FUNC7(db, SQLITE_MISUSE);
    FUNC15(db->mutex);
    return SQLITE_MISUSE_BKPT;
  }
  pTab = pCtx->pTab;
  FUNC2( FUNC1(pTab) );

  FUNC3(&sParse, 0, sizeof(sParse));
  sParse.eParseMode = PARSE_MODE_DECLARE_VTAB;
  sParse.db = db;
  sParse.nQueryLoop = 1;
  if( SQLITE_OK==FUNC11(&sParse, zCreateTable, &zErr) 
   && sParse.pNewTable
   && !db->mallocFailed
   && !sParse.pNewTable->pSelect
   && !FUNC1(sParse.pNewTable)
  ){
    if( !pTab->aCol ){
      Table *pNew = sParse.pNewTable;
      Index *pIdx;
      pTab->aCol = pNew->aCol;
      pTab->nCol = pNew->nCol;
      pTab->tabFlags |= pNew->tabFlags & (TF_WithoutRowid|TF_NoVisibleRowid);
      pNew->nCol = 0;
      pNew->aCol = 0;
      FUNC2( pTab->pIndex==0 );
      FUNC2( FUNC0(pNew) || FUNC10(pNew)!=0 );
      if( !FUNC0(pNew)
       && pCtx->pVTable->pMod->pModule->xUpdate!=0
       && FUNC10(pNew)->nKeyCol!=1
      ){
        /* WITHOUT ROWID virtual tables must either be read-only (xUpdate==0)
        ** or else must have a single-column PRIMARY KEY */
        rc = SQLITE_ERROR;
      }
      pIdx = pNew->pIndex;
      if( pIdx ){
        FUNC2( pIdx->pNext==0 );
        pTab->pIndex = pIdx;
        pNew->pIndex = 0;
        pIdx->pTable = pTab;
      }
    }
    pCtx->bDeclared = 1;
  }else{
    FUNC8(db, SQLITE_ERROR, (zErr ? "%s" : 0), zErr);
    FUNC5(db, zErr);
    rc = SQLITE_ERROR;
  }
  sParse.eParseMode = PARSE_MODE_NORMAL;

  if( sParse.pVdbe ){
    FUNC13(sParse.pVdbe);
  }
  FUNC6(db, sParse.pNewTable);
  FUNC9(&sParse);

  FUNC2( (rc&0xff)==rc );
  rc = FUNC4(db, rc);
  FUNC15(db->mutex);
  return rc;
}