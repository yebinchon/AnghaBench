#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    CELL x, y;
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 2, 1);
#endif
    y = FUNC2(pVM->pStack);
    x = FUNC2(pVM->pStack);
    FUNC1(FUNC0(x.i < y.i));
    return;
}