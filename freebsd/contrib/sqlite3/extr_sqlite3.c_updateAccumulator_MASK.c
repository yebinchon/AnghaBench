#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_20__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ExprList_item {int /*<<< orphan*/  pExpr; } ;
struct AggInfo_func {scalar_t__ iDistinct; TYPE_11__* pFunc; int /*<<< orphan*/  iMem; TYPE_20__* pExpr; } ;
struct AggInfo_col {int /*<<< orphan*/  iMem; int /*<<< orphan*/  pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_30__ {int directMode; int nFunc; int nAccumulator; struct AggInfo_col* aCol; struct AggInfo_func* aFunc; } ;
struct TYPE_29__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_28__ {int nMem; TYPE_4__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_27__ {int /*<<< orphan*/ * pDfltColl; } ;
struct TYPE_26__ {TYPE_2__* pWin; } ;
struct TYPE_25__ {int /*<<< orphan*/ * pFilter; } ;
struct TYPE_23__ {TYPE_6__* pList; } ;
struct TYPE_24__ {TYPE_3__ y; TYPE_1__ x; } ;
struct TYPE_22__ {int funcFlags; } ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  CollSeq ;
typedef  TYPE_7__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EP_WinFunc ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_20__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_20__*) ; 
 int /*<<< orphan*/  OP_AggStep ; 
 int /*<<< orphan*/  OP_CollSeq ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_If ; 
 int /*<<< orphan*/  P4_COLLSEQ ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int /*<<< orphan*/  SQLITE_ECEL_DUP ; 
 int SQLITE_FUNC_NEEDCOLL ; 
 int /*<<< orphan*/  SQLITE_JUMPIFNULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(Parse *pParse, int regAcc, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  int regHit = 0;
  int addrHitTest = 0;
  struct AggInfo_func *pF;
  struct AggInfo_col *pC;

  pAggInfo->directMode = 1;
  for(i=0, pF=pAggInfo->aFunc; i<pAggInfo->nFunc; i++, pF++){
    int nArg;
    int addrNext = 0;
    int regAgg;
    ExprList *pList = pF->pExpr->x.pList;
    FUNC3( !FUNC0(pF->pExpr, EP_xIsSelect) );
    FUNC3( !FUNC1(pF->pExpr) );
    if( FUNC0(pF->pExpr, EP_WinFunc) ){
      Expr *pFilter = pF->pExpr->y.pWin->pFilter;
      if( pAggInfo->nAccumulator 
       && (pF->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL) 
      ){
        if( regHit==0 ) regHit = ++pParse->nMem;
        /* If this is the first row of the group (regAcc==0), clear the
        ** "magnet" register regHit so that the accumulator registers
        ** are populated if the FILTER clause jumps over the the 
        ** invocation of min() or max() altogether. Or, if this is not
        ** the first row (regAcc==1), set the magnet register so that the
        ** accumulators are not populated unless the min()/max() is invoked and
        ** indicates that they should be.  */
        FUNC12(v, OP_Copy, regAcc, regHit);
      }
      addrNext = FUNC18(pParse);
      FUNC8(pParse, pFilter, addrNext, SQLITE_JUMPIFNULL);
    }
    if( pList ){
      nArg = pList->nExpr;
      regAgg = FUNC9(pParse, nArg);
      FUNC6(pParse, pList, regAgg, 0, SQLITE_ECEL_DUP);
    }else{
      nArg = 0;
      regAgg = 0;
    }
    if( pF->iDistinct>=0 ){
      if( addrNext==0 ){ 
        addrNext = FUNC18(pParse);
      }
      FUNC20( nArg==0 );  /* Error condition */
      FUNC20( nArg>1 );   /* Also an error */
      FUNC4(pParse, pF->iDistinct, addrNext, 1, regAgg);
    }
    if( pF->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
      CollSeq *pColl = 0;
      struct ExprList_item *pItem;
      int j;
      FUNC3( pList!=0 );  /* pList!=0 if pF->pFunc has NEEDCOLL */
      for(j=0, pItem=pList->a; !pColl && j<nArg; j++, pItem++){
        pColl = FUNC7(pParse, pItem->pExpr);
      }
      if( !pColl ){
        pColl = pParse->db->pDfltColl;
      }
      if( regHit==0 && pAggInfo->nAccumulator ) regHit = ++pParse->nMem;
      FUNC14(v, OP_CollSeq, regHit, 0, 0, (char *)pColl, P4_COLLSEQ);
    }
    FUNC13(v, OP_AggStep, 0, regAgg, pF->iMem);
    FUNC15(v, pF->pFunc, P4_FUNCDEF);
    FUNC16(v, (u8)nArg);
    FUNC10(pParse, regAgg, nArg);
    if( addrNext ){
      FUNC19(v, addrNext);
    }
  }
  if( regHit==0 && pAggInfo->nAccumulator ){
    regHit = regAcc;
  }
  if( regHit ){
    addrHitTest = FUNC11(v, OP_If, regHit); FUNC2(v);
  }
  for(i=0, pC=pAggInfo->aCol; i<pAggInfo->nAccumulator; i++, pC++){
    FUNC5(pParse, pC->pExpr, pC->iMem);
  }

  pAggInfo->directMode = 0;
  if( addrHitTest ){
    FUNC17(v, addrHitTest);
  }
}