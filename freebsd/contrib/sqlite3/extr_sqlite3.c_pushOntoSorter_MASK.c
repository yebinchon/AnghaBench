#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_7__* pKeyInfo; } ;
struct TYPE_25__ {int p2; TYPE_2__ p4; } ;
typedef  TYPE_3__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_29__ {scalar_t__ nKeyField; scalar_t__ nAllField; int /*<<< orphan*/  aSortFlags; } ;
struct TYPE_28__ {int nMem; TYPE_1__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_27__ {scalar_t__ iOffset; int iLimit; } ;
struct TYPE_26__ {int sortFlags; int nOBSat; int labelDone; int iECursor; int labelBkOut; int regReturn; int labelOBLopt; TYPE_12__* pOrderBy; int /*<<< orphan*/  addrSortIndex; } ;
struct TYPE_23__ {scalar_t__ mallocFailed; } ;
struct TYPE_22__ {int nExpr; } ;
typedef  TYPE_4__ SortCtx ;
typedef  TYPE_5__ Select ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int OP_IdxInsert ; 
 int OP_IdxLE ; 
 int /*<<< orphan*/  OP_IfNot ; 
 int /*<<< orphan*/  OP_IfNotZero ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_Last ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int /*<<< orphan*/  OP_Sequence ; 
 int /*<<< orphan*/  OP_SequenceTest ; 
 int OP_SorterInsert ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int SORTFLAG_UseSorter ; 
 int SQLITE_ECEL_DUP ; 
 int SQLITE_ECEL_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_6__*,TYPE_4__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_12__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int,int,int) ; 
 TYPE_7__* FUNC6 (TYPE_6__*,TYPE_12__*,int,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 void* FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(
  Parse *pParse,         /* Parser context */
  SortCtx *pSort,        /* Information about the ORDER BY clause */
  Select *pSelect,       /* The whole SELECT statement */
  int regData,           /* First register holding data to be sorted */
  int regOrigData,       /* First register holding data before packing */
  int nData,             /* Number of elements in the regData data array */
  int nPrefixReg         /* No. of reg prior to regData available for use */
){
  Vdbe *v = pParse->pVdbe;                         /* Stmt under construction */
  int bSeq = ((pSort->sortFlags & SORTFLAG_UseSorter)==0);
  int nExpr = pSort->pOrderBy->nExpr;              /* No. of ORDER BY terms */
  int nBase = nExpr + bSeq + nData;                /* Fields in sorter record */
  int regBase;                                     /* Regs for sorter record */
  int regRecord = 0;                               /* Assembled sorter record */
  int nOBSat = pSort->nOBSat;                      /* ORDER BY terms to skip */
  int op;                            /* Opcode to add sorter record to sorter */
  int iLimit;                        /* LIMIT counter */
  int iSkip = 0;                     /* End of the sorter insert loop */

  FUNC1( bSeq==0 || bSeq==1 );

  /* Three cases:
  **   (1) The data to be sorted has already been packed into a Record
  **       by a prior OP_MakeRecord.  In this case nData==1 and regData
  **       will be completely unrelated to regOrigData.
  **   (2) All output columns are included in the sort record.  In that
  **       case regData==regOrigData.
  **   (3) Some output columns are omitted from the sort record due to
  **       the SQLITE_ENABLE_SORTER_REFERENCE optimization, or due to the
  **       SQLITE_ECEL_OMITREF optimization, or due to the 
  **       SortCtx.pDeferredRowLoad optimiation.  In any of these cases
  **       regOrigData is 0 to prevent this routine from trying to copy
  **       values that might not yet exist.
  */
  FUNC1( nData==1 || regData==regOrigData || regOrigData==0 );

  if( nPrefixReg ){
    FUNC1( nPrefixReg==nExpr+bSeq );
    regBase = regData - nPrefixReg;
  }else{
    regBase = pParse->nMem + 1;
    pParse->nMem += nBase;
  }
  FUNC1( pSelect->iOffset==0 || pSelect->iLimit!=0 );
  iLimit = pSelect->iOffset ? pSelect->iOffset+1 : pSelect->iLimit;
  pSort->labelDone = FUNC16(pParse);
  FUNC4(pParse, pSort->pOrderBy, regBase, regOrigData,
                          SQLITE_ECEL_DUP | (regOrigData? SQLITE_ECEL_REF : 0));
  if( bSeq ){
    FUNC8(v, OP_Sequence, pSort->iECursor, regBase+nExpr);
  }
  if( nPrefixReg==0 && nData>0 ){
    FUNC5(pParse, regData, regBase+nExpr+bSeq, nData);
  }
  if( nOBSat>0 ){
    int regPrevKey;   /* The first nOBSat columns of the previous row */
    int addrFirst;    /* Address of the OP_IfNot opcode */
    int addrJmp;      /* Address of the OP_Jump opcode */
    VdbeOp *pOp;      /* Opcode that opens the sorter */
    int nKey;         /* Number of sorting key columns, including OP_Sequence */
    KeyInfo *pKI;     /* Original KeyInfo on the sorter table */

    regRecord = FUNC2(pParse, pSort, pSelect, regBase, nBase);
    regPrevKey = pParse->nMem+1;
    pParse->nMem += pSort->nOBSat;
    nKey = nExpr - pSort->nOBSat + bSeq;
    if( bSeq ){
      addrFirst = FUNC7(v, OP_IfNot, regBase+nExpr); 
    }else{
      addrFirst = FUNC7(v, OP_SequenceTest, pSort->iECursor);
    }
    FUNC0(v);
    FUNC9(v, OP_Compare, regPrevKey, regBase, pSort->nOBSat);
    pOp = FUNC14(v, pSort->addrSortIndex);
    if( pParse->db->mallocFailed ) return;
    pOp->p2 = nKey + nData;
    pKI = pOp->p4.pKeyInfo;
    FUNC3(pKI->aSortFlags, 0, pKI->nKeyField); /* Makes OP_Jump testable */
    FUNC12(v, -1, (char*)pKI, P4_KEYINFO);
    FUNC17( pKI->nAllField > pKI->nKeyField+2 );
    pOp->p4.pKeyInfo = FUNC6(pParse,pSort->pOrderBy,nOBSat,
                                           pKI->nAllField-pKI->nKeyField-1);
    addrJmp = FUNC13(v);
    FUNC9(v, OP_Jump, addrJmp+1, 0, addrJmp+1); FUNC0(v);
    pSort->labelBkOut = FUNC16(pParse);
    pSort->regReturn = ++pParse->nMem;
    FUNC8(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    FUNC7(v, OP_ResetSorter, pSort->iECursor);
    if( iLimit ){
      FUNC8(v, OP_IfNot, iLimit, pSort->labelDone);
      FUNC0(v);
    }
    FUNC15(v, addrFirst);
    FUNC5(pParse, regBase, regPrevKey, pSort->nOBSat);
    FUNC15(v, addrJmp);
  }
  if( iLimit ){
    /* At this point the values for the new sorter entry are stored
    ** in an array of registers. They need to be composed into a record
    ** and inserted into the sorter if either (a) there are currently
    ** less than LIMIT+OFFSET items or (b) the new record is smaller than 
    ** the largest record currently in the sorter. If (b) is true and there
    ** are already LIMIT+OFFSET items in the sorter, delete the largest
    ** entry before inserting the new one. This way there are never more 
    ** than LIMIT+OFFSET items in the sorter.
    **
    ** If the new record does not need to be inserted into the sorter,
    ** jump to the next iteration of the loop. If the pSort->labelOBLopt
    ** value is not zero, then it is a label of where to jump.  Otherwise,
    ** just bypass the row insert logic.  See the header comment on the
    ** sqlite3WhereOrderByLimitOptLabel() function for additional info.
    */
    int iCsr = pSort->iECursor;
    FUNC8(v, OP_IfNotZero, iLimit, FUNC13(v)+4);
    FUNC0(v);
    FUNC8(v, OP_Last, iCsr, 0);
    iSkip = FUNC10(v, OP_IdxLE,
                                 iCsr, 0, regBase+nOBSat, nExpr-nOBSat);
    FUNC0(v);
    FUNC7(v, OP_Delete, iCsr);
  }
  if( regRecord==0 ){
    regRecord = FUNC2(pParse, pSort, pSelect, regBase, nBase);
  }
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    op = OP_SorterInsert;
  }else{
    op = OP_IdxInsert;
  }
  FUNC10(v, op, pSort->iECursor, regRecord,
                       regBase+nOBSat, nBase-nOBSat);
  if( iSkip ){
    FUNC11(v, iSkip,
         pSort->labelOBLopt ? pSort->labelOBLopt : FUNC13(v));
  }
}