
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_11__ ;


typedef int u8 ;
struct ExprList_item {int pExpr; } ;
struct AggInfo_func {scalar_t__ iDistinct; TYPE_11__* pFunc; int iMem; TYPE_20__* pExpr; } ;
struct AggInfo_col {int iMem; int pExpr; } ;
typedef int Vdbe ;
struct TYPE_30__ {int directMode; int nFunc; int nAccumulator; struct AggInfo_col* aCol; struct AggInfo_func* aFunc; } ;
struct TYPE_29__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_28__ {int nMem; TYPE_4__* db; int * pVdbe; } ;
struct TYPE_27__ {int * pDfltColl; } ;
struct TYPE_26__ {TYPE_2__* pWin; } ;
struct TYPE_25__ {int * pFilter; } ;
struct TYPE_23__ {TYPE_6__* pList; } ;
struct TYPE_24__ {TYPE_3__ y; TYPE_1__ x; } ;
struct TYPE_22__ {int funcFlags; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;
typedef int Expr ;
typedef int CollSeq ;
typedef TYPE_7__ AggInfo ;


 int EP_WinFunc ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_20__*,int ) ;
 int IsWindowFunc (TYPE_20__*) ;
 int OP_AggStep ;
 int OP_CollSeq ;
 int OP_Copy ;
 int OP_If ;
 int P4_COLLSEQ ;
 int P4_FUNCDEF ;
 int SQLITE_ECEL_DUP ;
 int SQLITE_FUNC_NEEDCOLL ;
 int SQLITE_JUMPIFNULL ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int codeDistinct (TYPE_5__*,scalar_t__,int,int,int) ;
 int sqlite3ExprCode (TYPE_5__*,int ,int ) ;
 int sqlite3ExprCodeExprList (TYPE_5__*,TYPE_6__*,int,int ,int ) ;
 int * sqlite3ExprCollSeq (TYPE_5__*,int ) ;
 int sqlite3ExprIfFalse (TYPE_5__*,int *,int,int ) ;
 int sqlite3GetTempRange (TYPE_5__*,int) ;
 int sqlite3ReleaseTempRange (TYPE_5__*,int,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,int,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,char*,int ) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_11__*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_5__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void updateAccumulator(Parse *pParse, int regAcc, AggInfo *pAggInfo){
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
    assert( !ExprHasProperty(pF->pExpr, EP_xIsSelect) );
    assert( !IsWindowFunc(pF->pExpr) );
    if( ExprHasProperty(pF->pExpr, EP_WinFunc) ){
      Expr *pFilter = pF->pExpr->y.pWin->pFilter;
      if( pAggInfo->nAccumulator
       && (pF->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL)
      ){
        if( regHit==0 ) regHit = ++pParse->nMem;







        sqlite3VdbeAddOp2(v, OP_Copy, regAcc, regHit);
      }
      addrNext = sqlite3VdbeMakeLabel(pParse);
      sqlite3ExprIfFalse(pParse, pFilter, addrNext, SQLITE_JUMPIFNULL);
    }
    if( pList ){
      nArg = pList->nExpr;
      regAgg = sqlite3GetTempRange(pParse, nArg);
      sqlite3ExprCodeExprList(pParse, pList, regAgg, 0, SQLITE_ECEL_DUP);
    }else{
      nArg = 0;
      regAgg = 0;
    }
    if( pF->iDistinct>=0 ){
      if( addrNext==0 ){
        addrNext = sqlite3VdbeMakeLabel(pParse);
      }
      testcase( nArg==0 );
      testcase( nArg>1 );
      codeDistinct(pParse, pF->iDistinct, addrNext, 1, regAgg);
    }
    if( pF->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
      CollSeq *pColl = 0;
      struct ExprList_item *pItem;
      int j;
      assert( pList!=0 );
      for(j=0, pItem=pList->a; !pColl && j<nArg; j++, pItem++){
        pColl = sqlite3ExprCollSeq(pParse, pItem->pExpr);
      }
      if( !pColl ){
        pColl = pParse->db->pDfltColl;
      }
      if( regHit==0 && pAggInfo->nAccumulator ) regHit = ++pParse->nMem;
      sqlite3VdbeAddOp4(v, OP_CollSeq, regHit, 0, 0, (char *)pColl, P4_COLLSEQ);
    }
    sqlite3VdbeAddOp3(v, OP_AggStep, 0, regAgg, pF->iMem);
    sqlite3VdbeAppendP4(v, pF->pFunc, P4_FUNCDEF);
    sqlite3VdbeChangeP5(v, (u8)nArg);
    sqlite3ReleaseTempRange(pParse, regAgg, nArg);
    if( addrNext ){
      sqlite3VdbeResolveLabel(v, addrNext);
    }
  }
  if( regHit==0 && pAggInfo->nAccumulator ){
    regHit = regAcc;
  }
  if( regHit ){
    addrHitTest = sqlite3VdbeAddOp1(v, OP_If, regHit); VdbeCoverage(v);
  }
  for(i=0, pC=pAggInfo->aCol; i<pAggInfo->nAccumulator; i++, pC++){
    sqlite3ExprCode(pParse, pC->pExpr, pC->iMem);
  }

  pAggInfo->directMode = 0;
  if( addrHitTest ){
    sqlite3VdbeJumpHere(v, addrHitTest);
  }
}
