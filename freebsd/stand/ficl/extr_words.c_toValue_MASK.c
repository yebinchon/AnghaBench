#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ nLocals; int /*<<< orphan*/  pStore; int /*<<< orphan*/  pTo2LocalParen; int /*<<< orphan*/  pToLocalParen; } ;
struct TYPE_11__ {scalar_t__ state; TYPE_8__* pSys; int /*<<< orphan*/  pStack; } ;
struct TYPE_10__ {scalar_t__ code; int /*<<< orphan*/ * param; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_WORD ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 scalar_t__ COMPILE ; 
 scalar_t__ INTERPRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ do2LocalIm ; 
 scalar_t__ doLocalIm ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(FICL_VM *pVM)
{
    STRINGINFO si = FUNC11(pVM);
    FICL_DICT *dp = FUNC10(pVM);
    FICL_WORD *pFW;

#if FICL_WANT_LOCALS
    if ((pVM->pSys->nLocals > 0) && (pVM->state == COMPILE))
    {
        FICL_DICT *pLoc = ficlGetLoc(pVM->pSys);
        pFW = dictLookup(pLoc, si);
        if (pFW && (pFW->code == doLocalIm))
        {
            dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pToLocalParen));
            dictAppendCell(dp, LVALUEtoCELL(pFW->param[0]));
            return;
        }
        else if (pFW && pFW->code == do2LocalIm)
        {
            dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pTo2LocalParen));
            dictAppendCell(dp, LVALUEtoCELL(pFW->param[0]));
            return;
        }
    }
#endif

    FUNC4(pVM->pSys->pStore);

    pFW = FUNC6(dp, si);
    if (!pFW)
    {
        int i = FUNC2(si);
        FUNC12(pVM, "%.*s not found", i, FUNC3(si));
    }

    if (pVM->state == INTERPRET)
        pFW->param[0] = FUNC9(pVM->pStack);
    else        /* compile code to store to word's param */
    {
        FUNC1(&pFW->param[0]);
        FUNC8(pVM);
        FUNC5(dp, FUNC0(pVM->pSys->pStore));
    }
    return;
}