
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;


struct TYPE_24__ {TYPE_7__* pKeyInfo; } ;
struct TYPE_25__ {int p2; TYPE_2__ p4; } ;
typedef TYPE_3__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_29__ {scalar_t__ nKeyField; scalar_t__ nAllField; int aSortFlags; } ;
struct TYPE_28__ {int nMem; TYPE_1__* db; int * pVdbe; } ;
struct TYPE_27__ {scalar_t__ iOffset; int iLimit; } ;
struct TYPE_26__ {int sortFlags; int nOBSat; int labelDone; int iECursor; int labelBkOut; int regReturn; int labelOBLopt; TYPE_12__* pOrderBy; int addrSortIndex; } ;
struct TYPE_23__ {scalar_t__ mallocFailed; } ;
struct TYPE_22__ {int nExpr; } ;
typedef TYPE_4__ SortCtx ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ KeyInfo ;


 int OP_Compare ;
 int OP_Delete ;
 int OP_Gosub ;
 int OP_IdxInsert ;
 int OP_IdxLE ;
 int OP_IfNot ;
 int OP_IfNotZero ;
 int OP_Jump ;
 int OP_Last ;
 int OP_ResetSorter ;
 int OP_Sequence ;
 int OP_SequenceTest ;
 int OP_SorterInsert ;
 int P4_KEYINFO ;
 int SORTFLAG_UseSorter ;
 int SQLITE_ECEL_DUP ;
 int SQLITE_ECEL_REF ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int makeSorterRecord (TYPE_6__*,TYPE_4__*,TYPE_5__*,int,int) ;
 int memset (int ,int ,scalar_t__) ;
 int sqlite3ExprCodeExprList (TYPE_6__*,TYPE_12__*,int,int,int) ;
 int sqlite3ExprCodeMove (TYPE_6__*,int,int,int) ;
 TYPE_7__* sqlite3KeyInfoFromExprList (TYPE_6__*,TYPE_12__*,int,scalar_t__) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,int,int,int,int,int) ;
 int sqlite3VdbeChangeP2 (int *,int,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 TYPE_3__* sqlite3VdbeGetOp (int *,int ) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 void* sqlite3VdbeMakeLabel (TYPE_6__*) ;
 int testcase (int) ;

__attribute__((used)) static void pushOntoSorter(
  Parse *pParse,
  SortCtx *pSort,
  Select *pSelect,
  int regData,
  int regOrigData,
  int nData,
  int nPrefixReg
){
  Vdbe *v = pParse->pVdbe;
  int bSeq = ((pSort->sortFlags & SORTFLAG_UseSorter)==0);
  int nExpr = pSort->pOrderBy->nExpr;
  int nBase = nExpr + bSeq + nData;
  int regBase;
  int regRecord = 0;
  int nOBSat = pSort->nOBSat;
  int op;
  int iLimit;
  int iSkip = 0;

  assert( bSeq==0 || bSeq==1 );
  assert( nData==1 || regData==regOrigData || regOrigData==0 );

  if( nPrefixReg ){
    assert( nPrefixReg==nExpr+bSeq );
    regBase = regData - nPrefixReg;
  }else{
    regBase = pParse->nMem + 1;
    pParse->nMem += nBase;
  }
  assert( pSelect->iOffset==0 || pSelect->iLimit!=0 );
  iLimit = pSelect->iOffset ? pSelect->iOffset+1 : pSelect->iLimit;
  pSort->labelDone = sqlite3VdbeMakeLabel(pParse);
  sqlite3ExprCodeExprList(pParse, pSort->pOrderBy, regBase, regOrigData,
                          SQLITE_ECEL_DUP | (regOrigData? SQLITE_ECEL_REF : 0));
  if( bSeq ){
    sqlite3VdbeAddOp2(v, OP_Sequence, pSort->iECursor, regBase+nExpr);
  }
  if( nPrefixReg==0 && nData>0 ){
    sqlite3ExprCodeMove(pParse, regData, regBase+nExpr+bSeq, nData);
  }
  if( nOBSat>0 ){
    int regPrevKey;
    int addrFirst;
    int addrJmp;
    VdbeOp *pOp;
    int nKey;
    KeyInfo *pKI;

    regRecord = makeSorterRecord(pParse, pSort, pSelect, regBase, nBase);
    regPrevKey = pParse->nMem+1;
    pParse->nMem += pSort->nOBSat;
    nKey = nExpr - pSort->nOBSat + bSeq;
    if( bSeq ){
      addrFirst = sqlite3VdbeAddOp1(v, OP_IfNot, regBase+nExpr);
    }else{
      addrFirst = sqlite3VdbeAddOp1(v, OP_SequenceTest, pSort->iECursor);
    }
    VdbeCoverage(v);
    sqlite3VdbeAddOp3(v, OP_Compare, regPrevKey, regBase, pSort->nOBSat);
    pOp = sqlite3VdbeGetOp(v, pSort->addrSortIndex);
    if( pParse->db->mallocFailed ) return;
    pOp->p2 = nKey + nData;
    pKI = pOp->p4.pKeyInfo;
    memset(pKI->aSortFlags, 0, pKI->nKeyField);
    sqlite3VdbeChangeP4(v, -1, (char*)pKI, P4_KEYINFO);
    testcase( pKI->nAllField > pKI->nKeyField+2 );
    pOp->p4.pKeyInfo = sqlite3KeyInfoFromExprList(pParse,pSort->pOrderBy,nOBSat,
                                           pKI->nAllField-pKI->nKeyField-1);
    addrJmp = sqlite3VdbeCurrentAddr(v);
    sqlite3VdbeAddOp3(v, OP_Jump, addrJmp+1, 0, addrJmp+1); VdbeCoverage(v);
    pSort->labelBkOut = sqlite3VdbeMakeLabel(pParse);
    pSort->regReturn = ++pParse->nMem;
    sqlite3VdbeAddOp2(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    sqlite3VdbeAddOp1(v, OP_ResetSorter, pSort->iECursor);
    if( iLimit ){
      sqlite3VdbeAddOp2(v, OP_IfNot, iLimit, pSort->labelDone);
      VdbeCoverage(v);
    }
    sqlite3VdbeJumpHere(v, addrFirst);
    sqlite3ExprCodeMove(pParse, regBase, regPrevKey, pSort->nOBSat);
    sqlite3VdbeJumpHere(v, addrJmp);
  }
  if( iLimit ){
    int iCsr = pSort->iECursor;
    sqlite3VdbeAddOp2(v, OP_IfNotZero, iLimit, sqlite3VdbeCurrentAddr(v)+4);
    VdbeCoverage(v);
    sqlite3VdbeAddOp2(v, OP_Last, iCsr, 0);
    iSkip = sqlite3VdbeAddOp4Int(v, OP_IdxLE,
                                 iCsr, 0, regBase+nOBSat, nExpr-nOBSat);
    VdbeCoverage(v);
    sqlite3VdbeAddOp1(v, OP_Delete, iCsr);
  }
  if( regRecord==0 ){
    regRecord = makeSorterRecord(pParse, pSort, pSelect, regBase, nBase);
  }
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    op = OP_SorterInsert;
  }else{
    op = OP_IdxInsert;
  }
  sqlite3VdbeAddOp4Int(v, op, pSort->iECursor, regRecord,
                       regBase+nOBSat, nBase-nOBSat);
  if( iSkip ){
    sqlite3VdbeChangeP2(v, iSkip,
         pSort->labelOBLopt ? pSort->labelOBLopt : sqlite3VdbeCurrentAddr(v));
  }
}
