#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  i; } ;
struct TYPE_7__ {int /*<<< orphan*/  pad; int /*<<< orphan*/  base; int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    CELL c;
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 0);
#endif
    c = FUNC1(pVM->pStack);
    FUNC0((c).i, pVM->pad, pVM->base);
    FUNC2(pVM->pad, " ");
    FUNC4(pVM, pVM->pad, 0);
    return;
}