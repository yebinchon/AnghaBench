#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  int /*<<< orphan*/  FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

void FUNC8(FICL_VM *pVM)
{
    FICL_WORD *pFW = NULL;
    STRINGINFO si = FUNC6(pVM);
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 0, 1);
#endif

    pFW = FUNC3(FUNC5(pVM), si);
    if (!pFW)
    {
        int i = FUNC1(si);
        FUNC7(pVM, "%.*s not found", i, FUNC2(si));
    }
    FUNC0(pFW);
    return;
}