#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_14__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ iOrderByCol; } ;
struct TYPE_29__ {TYPE_1__ x; } ;
struct ExprList_item {scalar_t__ zSpan; scalar_t__ zName; TYPE_2__ u; int /*<<< orphan*/  pExpr; scalar_t__ bSorterRef; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_32__ {int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_5__ Table ;
struct TYPE_36__ {int nMem; int /*<<< orphan*/  nTab; int /*<<< orphan*/  db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_35__ {int /*<<< orphan*/  iOffset; TYPE_3__* pEList; } ;
struct TYPE_34__ {int eDest; int iSDParm; int iSdst; int /*<<< orphan*/  zAffSdst; } ;
struct TYPE_33__ {int labelDone; int labelBkOut; int regReturn; int nDefer; int iECursor; int nOBSat; int sortFlags; TYPE_4__* aDefer; TYPE_10__* pOrderBy; } ;
struct TYPE_31__ {int iCsr; int nKey; TYPE_5__* pTab; } ;
struct TYPE_30__ {struct ExprList_item* a; } ;
struct TYPE_27__ {int nKeyCol; } ;
struct TYPE_26__ {int nExpr; } ;
typedef  TYPE_6__ SortCtx ;
typedef  TYPE_7__ SelectDest ;
typedef  TYPE_8__ Select ;
typedef  TYPE_9__ Parse ;
typedef  TYPE_10__ ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  OPFLAG_APPEND ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_IdxLE ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_NullRow ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_OpenPseudo ; 
 int /*<<< orphan*/  OP_OpenRead ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_SeekGE ; 
 int /*<<< orphan*/  OP_SeekRowid ; 
 int /*<<< orphan*/  OP_Sort ; 
 int /*<<< orphan*/  OP_SorterData ; 
 int /*<<< orphan*/  OP_SorterNext ; 
 int /*<<< orphan*/  OP_SorterSort ; 
 int /*<<< orphan*/  OP_Yield ; 
 int SORTFLAG_UseSorter ; 
 int SRT_Coroutine ; 
#define  SRT_EphemTab 131 
#define  SRT_Mem 130 
 int SRT_Output ; 
#define  SRT_Set 129 
#define  SRT_Table 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_9__*,int) ; 
 int FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_14__* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int FUNC25 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 

__attribute__((used)) static void FUNC28(
  Parse *pParse,    /* Parsing context */
  Select *p,        /* The SELECT statement */
  SortCtx *pSort,   /* Information on the ORDER BY clause */
  int nColumn,      /* Number of columns of data */
  SelectDest *pDest /* Write the sorted results here */
){
  Vdbe *v = pParse->pVdbe;                     /* The prepared statement */
  int addrBreak = pSort->labelDone;            /* Jump here to exit loop */
  int addrContinue = FUNC25(pParse);/* Jump here for next cycle */
  int addr;                       /* Top of output loop. Jump for Next. */
  int addrOnce = 0;
  int iTab;
  ExprList *pOrderBy = pSort->pOrderBy;
  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;
  int regRow;
  int regRowid;
  int iCol;
  int nKey;                       /* Number of key columns in sorter record */
  int iSortTab;                   /* Sorter cursor to read from */
  int i;
  int bSeq;                       /* True if sorter record includes seq. no. */
  int nRefKey = 0;
  struct ExprList_item *aOutEx = p->pEList->a;

  FUNC4( addrBreak<0 );
  if( pSort->labelBkOut ){
    FUNC17(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    FUNC23(v, addrBreak);
    FUNC26(v, pSort->labelBkOut);
  }

#ifdef SQLITE_ENABLE_SORTER_REFERENCES
  /* Open any cursors needed for sorter-reference expressions */
  for(i=0; i<pSort->nDefer; i++){
    Table *pTab = pSort->aDefer[i].pTab;
    int iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
    sqlite3OpenTable(pParse, pSort->aDefer[i].iCsr, iDb, pTab, OP_OpenRead);
    nRefKey = MAX(nRefKey, pSort->aDefer[i].nKey);
  }
#endif

  iTab = pSort->iECursor;
  if( eDest==SRT_Output || eDest==SRT_Coroutine || eDest==SRT_Mem ){
    regRowid = 0;
    regRow = pDest->iSdst;
  }else{
    regRowid = FUNC8(pParse);
    if( eDest==SRT_EphemTab || eDest==SRT_Table ){
      regRow = FUNC8(pParse);
      nColumn = 0;
    }else{
      regRow = FUNC7(pParse, nColumn);
    }
  }
  nKey = pOrderBy->nExpr - pSort->nOBSat;
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    int regSortOut = ++pParse->nMem;
    iSortTab = pParse->nTab++;
    if( pSort->labelBkOut ){
      addrOnce = FUNC15(v, OP_Once); FUNC3(v);
    }
    FUNC18(v, OP_OpenPseudo, iSortTab, regSortOut, 
        nKey+1+nColumn+nRefKey);
    if( addrOnce ) FUNC24(v, addrOnce);
    addr = 1 + FUNC17(v, OP_SorterSort, iTab, addrBreak);
    FUNC3(v);
    FUNC5(v, p->iOffset, addrContinue);
    FUNC18(v, OP_SorterData, iTab, regSortOut, iSortTab);
    bSeq = 0;
  }else{
    addr = 1 + FUNC17(v, OP_Sort, iTab, addrBreak); FUNC3(v);
    FUNC5(v, p->iOffset, addrContinue);
    iSortTab = iTab;
    bSeq = 1;
  }
  for(i=0, iCol=nKey+bSeq-1; i<nColumn; i++){
#ifdef SQLITE_ENABLE_SORTER_REFERENCES
    if( aOutEx[i].bSorterRef ) continue;
#endif
    if( aOutEx[i].u.x.iOrderByCol==0 ) iCol++;
  }
#ifdef SQLITE_ENABLE_SORTER_REFERENCES
  if( pSort->nDefer ){
    int iKey = iCol+1;
    int regKey = sqlite3GetTempRange(pParse, nRefKey);

    for(i=0; i<pSort->nDefer; i++){
      int iCsr = pSort->aDefer[i].iCsr;
      Table *pTab = pSort->aDefer[i].pTab;
      int nKey = pSort->aDefer[i].nKey;

      sqlite3VdbeAddOp1(v, OP_NullRow, iCsr);
      if( HasRowid(pTab) ){
        sqlite3VdbeAddOp3(v, OP_Column, iSortTab, iKey++, regKey);
        sqlite3VdbeAddOp3(v, OP_SeekRowid, iCsr, 
            sqlite3VdbeCurrentAddr(v)+1, regKey);
      }else{
        int k;
        int iJmp;
        assert( sqlite3PrimaryKeyIndex(pTab)->nKeyCol==nKey );
        for(k=0; k<nKey; k++){
          sqlite3VdbeAddOp3(v, OP_Column, iSortTab, iKey++, regKey+k);
        }
        iJmp = sqlite3VdbeCurrentAddr(v);
        sqlite3VdbeAddOp4Int(v, OP_SeekGE, iCsr, iJmp+2, regKey, nKey);
        sqlite3VdbeAddOp4Int(v, OP_IdxLE, iCsr, iJmp+3, regKey, nKey);
        sqlite3VdbeAddOp1(v, OP_NullRow, iCsr);
      }
    }
    sqlite3ReleaseTempRange(pParse, regKey, nRefKey);
  }
#endif
  for(i=nColumn-1; i>=0; i--){
#ifdef SQLITE_ENABLE_SORTER_REFERENCES
    if( aOutEx[i].bSorterRef ){
      sqlite3ExprCode(pParse, aOutEx[i].pExpr, regRow+i);
    }else
#endif
    {
      int iRead;
      if( aOutEx[i].u.x.iOrderByCol ){
        iRead = aOutEx[i].u.x.iOrderByCol-1;
      }else{
        iRead = iCol--;
      }
      FUNC18(v, OP_Column, iSortTab, iRead, regRow+i);
      FUNC2((v, "%s", aOutEx[i].zName?aOutEx[i].zName : aOutEx[i].zSpan));
    }
  }
  switch( eDest ){
    case SRT_Table:
    case SRT_EphemTab: {
      FUNC18(v, OP_Column, iSortTab, nKey+bSeq, regRow);
      FUNC17(v, OP_NewRowid, iParm, regRowid);
      FUNC18(v, OP_Insert, iParm, regRow, regRowid);
      FUNC21(v, OPFLAG_APPEND);
      break;
    }
#ifndef SQLITE_OMIT_SUBQUERY
    case SRT_Set: {
      FUNC4( nColumn==FUNC14(pDest->zAffSdst) );
      FUNC19(v, OP_MakeRecord, regRow, nColumn, regRowid,
                        pDest->zAffSdst, nColumn);
      FUNC20(v, OP_IdxInsert, iParm, regRowid, regRow, nColumn);
      break;
    }
    case SRT_Mem: {
      /* The LIMIT clause will terminate the loop for us */
      break;
    }
#endif
    default: {
      FUNC4( eDest==SRT_Output || eDest==SRT_Coroutine ); 
      FUNC27( eDest==SRT_Output );
      FUNC27( eDest==SRT_Coroutine );
      if( eDest==SRT_Output ){
        FUNC17(v, OP_ResultRow, pDest->iSdst, nColumn);
      }else{
        FUNC16(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  if( regRowid ){
    if( eDest==SRT_Set ){
      FUNC11(pParse, regRow, nColumn);
    }else{
      FUNC12(pParse, regRow);
    }
    FUNC12(pParse, regRowid);
  }
  /* The bottom of the loop
  */
  FUNC26(v, addrContinue);
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    FUNC17(v, OP_SorterNext, iTab, addr); FUNC3(v);
  }else{
    FUNC17(v, OP_Next, iTab, addr); FUNC3(v);
  }
  if( pSort->regReturn ) FUNC16(v, OP_Return, pSort->regReturn);
  FUNC26(v, addrBreak);
}