#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ nLocals; int /*<<< orphan*/  pSemiParen; int /*<<< orphan*/  pUnLinkParen; } ;
struct TYPE_15__ {TYPE_1__* pForthWords; } ;
struct TYPE_14__ {int /*<<< orphan*/  state; TYPE_9__* pSys; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ FICL_VM ;
typedef  TYPE_3__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  INTERPRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colonTag ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC7(pVM);

    FUNC1(pVM->pSys->pSemiParen);
    FUNC6(pVM, colonTag);

#if FICL_WANT_LOCALS
    assert(pVM->pSys->pUnLinkParen);
    if (pVM->pSys->nLocals > 0)
    {
        FICL_DICT *pLoc = ficlGetLoc(pVM->pSys);
        dictEmpty(pLoc, pLoc->pForthWords->size);
        dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pUnLinkParen));
    }
    pVM->pSys->nLocals = 0;
#endif

    FUNC2(dp, FUNC0(pVM->pSys->pSemiParen));
    pVM->state = INTERPRET;
    FUNC4(dp);
    return;
}