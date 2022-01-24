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
typedef  int /*<<< orphan*/  FICL_INT ;
typedef  int /*<<< orphan*/  DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    FICL_INT n2;
    FICL_INT n1;
    DPINT d;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,2,2);
#endif

    n2 = FUNC0();
    n1 = FUNC0();

    d = FUNC2(n1, n2);
    FUNC1(pVM->pStack, d);
    return;
}