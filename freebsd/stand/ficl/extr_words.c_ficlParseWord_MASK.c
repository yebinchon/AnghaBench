#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ nLocals; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_7__* pSys; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_1__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int FICL_FALSE ; 
 scalar_t__ FICL_TRUE ; 
 scalar_t__ INTERPRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(FICL_VM *pVM, STRINGINFO si)
{
    FICL_DICT *dp = FUNC7(pVM);
    FICL_WORD *tempFW;

#if FICL_ROBUST
    dictCheck(dp, pVM, 0);
    vmCheckStack(pVM, 0, 0);
#endif

#if FICL_WANT_LOCALS
    if (pVM->pSys->nLocals > 0)
    {
        tempFW = ficlLookupLoc(pVM->pSys, si);
    }
    else
#endif
    tempFW = FUNC3(dp, si);

    if (pVM->state == INTERPRET)
    {
        if (tempFW != NULL)
        {
            if (FUNC9(tempFW))
            {
                FUNC8(pVM, "Error: Compile only!");
            }

            FUNC6(pVM, tempFW);
            return (int)FICL_TRUE;
        }
    }

    else /* (pVM->state == COMPILE) */
    {
        if (tempFW != NULL)
        {
            if (FUNC10(tempFW))
            {
                FUNC6(pVM, tempFW);
            }
            else
            {
                FUNC1(dp, FUNC0(tempFW));
            }
            return (int)FICL_TRUE;
        }
    }

    return FICL_FALSE;
}