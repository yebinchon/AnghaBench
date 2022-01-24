#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    FICL_INT i;
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 2, 1);
#endif
    i = FUNC2(pVM->pStack);
    i += FUNC1(pVM->pStack).i;
    FUNC3(pVM->pStack, FUNC0(i));
    return;
}