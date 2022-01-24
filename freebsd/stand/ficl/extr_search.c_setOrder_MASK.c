#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nLists; int /*<<< orphan*/ * pSearch; } ;
struct TYPE_8__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FICL_DEFAULT_VOCS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC6(FICL_VM *pVM)
{
    int i;
    int nLists = FUNC2(pVM->pStack);
    FICL_DICT *dp = FUNC4(pVM);

    if (nLists > FICL_DEFAULT_VOCS)
    {
        FUNC5(pVM, "set-order error: list would be too large");
    }

    FUNC1(TRUE);

    if (nLists >= 0)
    {
        dp->nLists = nLists;
        for (i = nLists-1; i >= 0; --i)
        {
            dp->pSearch[i] = FUNC3(pVM->pStack);
        }
    }
    else
    {
        FUNC0(dp);
    }

    FUNC1(FALSE);
    return;
}