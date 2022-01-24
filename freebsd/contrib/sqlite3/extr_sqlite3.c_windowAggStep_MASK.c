#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_20__ {int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_4__ WindowCodeArg ;
struct TYPE_21__ {scalar_t__ eStart; int iArgCol; int iEphCsr; scalar_t__ regStartRowid; int regApp; int csrApp; int regAccum; scalar_t__ bExprArgs; TYPE_3__* pOwner; scalar_t__ pFilter; TYPE_7__* pFunc; struct TYPE_21__* pNextWin; } ;
typedef  TYPE_5__ Window ;
struct TYPE_22__ {scalar_t__ opcode; int p1; } ;
typedef  TYPE_6__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_23__ {scalar_t__ zName; int funcFlags; scalar_t__ xSFunc; } ;
struct TYPE_18__ {TYPE_15__* pList; } ;
struct TYPE_19__ {TYPE_2__ x; } ;
struct TYPE_17__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_16__ {int nExpr; TYPE_1__* a; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_7__ FuncDef ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AddImm ; 
 scalar_t__ OP_AggInverse ; 
 scalar_t__ OP_AggStep ; 
 int /*<<< orphan*/  OP_CollSeq ; 
 scalar_t__ OP_Column ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 scalar_t__ OP_IfNot ; 
 int /*<<< orphan*/  OP_IsNull ; 
 scalar_t__ OP_MakeRecord ; 
 int /*<<< orphan*/  OP_SCopy ; 
 int /*<<< orphan*/  OP_SeekGE ; 
 int /*<<< orphan*/  P4_COLLSEQ ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int SQLITE_FUNC_MINMAX ; 
 int SQLITE_FUNC_NEEDCOLL ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ first_valueName ; 
 scalar_t__ noopStepFunc ; 
 scalar_t__ nth_valueName ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_15__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC22(
  WindowCodeArg *p,
  Window *pMWin,                  /* Linked list of window functions */
  int csr,                        /* Read arguments from this cursor */
  int bInverse,                   /* True to invoke xInverse instead of xStep */
  int reg                         /* Array of registers */
){
  Parse *pParse = p->pParse;
  Vdbe *v = FUNC7(pParse);
  Window *pWin;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *pFunc = pWin->pFunc;
    int regArg;
    int nArg = pWin->bExprArgs ? 0 : FUNC21(pWin);
    int i;

    FUNC2( bInverse==0 || pWin->eStart!=TK_UNBOUNDED );

    /* All OVER clauses in the same window function aggregate step must
    ** be the same. */
    FUNC2( pWin==pMWin || FUNC20(pParse,pWin,pMWin,0)==0 );

    for(i=0; i<nArg; i++){
      if( i!=1 || pFunc->zName!=nth_valueName ){
        FUNC12(v, OP_Column, csr, pWin->iArgCol+i, reg+i);
      }else{
        FUNC12(v, OP_Column, pMWin->iEphCsr, pWin->iArgCol+i, reg+i);
      }
    }
    regArg = reg;

    if( pMWin->regStartRowid==0
     && (pFunc->funcFlags & SQLITE_FUNC_MINMAX) 
     && (pWin->eStart!=TK_UNBOUNDED)
    ){
      int addrIsNull = FUNC10(v, OP_IsNull, regArg);
      FUNC0(v);
      if( bInverse==0 ){
        FUNC11(v, OP_AddImm, pWin->regApp+1, 1);
        FUNC11(v, OP_SCopy, regArg, pWin->regApp);
        FUNC12(v, OP_MakeRecord, pWin->regApp, 2, pWin->regApp+2);
        FUNC11(v, OP_IdxInsert, pWin->csrApp, pWin->regApp+2);
      }else{
        FUNC14(v, OP_SeekGE, pWin->csrApp, 0, regArg, 1);
        FUNC1(v);
        FUNC10(v, OP_Delete, pWin->csrApp);
        FUNC19(v, FUNC17(v)-2);
      }
      FUNC19(v, addrIsNull);
    }else if( pWin->regApp ){
      FUNC2( pFunc->zName==nth_valueName
           || pFunc->zName==first_valueName
      );
      FUNC2( bInverse==0 || bInverse==1 );
      FUNC11(v, OP_AddImm, pWin->regApp+1-bInverse, 1);
    }else if( pFunc->xSFunc!=noopStepFunc ){
      int addrIf = 0;
      if( pWin->pFilter ){
        int regTmp;
        FUNC2( pWin->bExprArgs || !nArg ||nArg==pWin->pOwner->x.pList->nExpr );
        FUNC2( pWin->bExprArgs || nArg  ||pWin->pOwner->x.pList==0 );
        regTmp = FUNC6(pParse);
        FUNC12(v, OP_Column, csr, pWin->iArgCol+nArg,regTmp);
        addrIf = FUNC12(v, OP_IfNot, regTmp, 0, 1);
        FUNC0(v);
        FUNC9(pParse, regTmp);
      }
      
      if( pWin->bExprArgs ){
        int iStart = FUNC17(v);
        VdbeOp *pOp, *pEnd;

        nArg = pWin->pOwner->x.pList->nExpr;
        regArg = FUNC5(pParse, nArg);
        FUNC3(pParse, pWin->pOwner->x.pList, regArg, 0, 0);

        pEnd = FUNC18(v, -1);
        for(pOp=FUNC18(v, iStart); pOp<=pEnd; pOp++){
          if( pOp->opcode==OP_Column && pOp->p1==pWin->iEphCsr ){
            pOp->p1 = csr;
          }
        }
      }
      if( pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
        CollSeq *pColl;
        FUNC2( nArg>0 );
        pColl = FUNC4(pParse, pWin->pOwner->x.pList->a[0].pExpr);
        FUNC13(v, OP_CollSeq, 0,0,0, (const char*)pColl, P4_COLLSEQ);
      }
      FUNC12(v, bInverse? OP_AggInverse : OP_AggStep, 
                        bInverse, regArg, pWin->regAccum);
      FUNC15(v, pFunc, P4_FUNCDEF);
      FUNC16(v, (u8)nArg);
      if( pWin->bExprArgs ){
        FUNC8(pParse, regArg, nArg);
      }
      if( addrIf ) FUNC19(v, addrIf);
    }
  }
}