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
typedef  void FICL_WORD ;
typedef  int /*<<< orphan*/  FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(FICL_VM *pVM, STRINGINFO si, void *returnForFailure)
{
    FICL_WORD *pFW;

    pFW = FUNC3(FUNC4(pVM), si);
    if (pFW)
    {
        FUNC1(pFW);
        FUNC0((FUNC5(pFW) ? 1 : -1));
    }
    else
    {
        FUNC1(returnForFailure);
        FUNC2(0);
    }
    return;
}