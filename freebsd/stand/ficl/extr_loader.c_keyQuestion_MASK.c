#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FICL_FALSE ; 
 int /*<<< orphan*/  FICL_TRUE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 0, 1);
#endif
#ifdef TESTMAIN
    /* XXX Since we don't fiddle with termios, let it always succeed... */
    stackPushINT(pVM->pStack, FICL_TRUE);
#else
    /* But here do the right thing. */
    FUNC1(pVM->pStack, FUNC0()? FICL_TRUE : FICL_FALSE);
#endif
    return;
}