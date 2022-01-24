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
struct TYPE_8__ {int /*<<< orphan*/  pStack; } ;
struct TYPE_7__ {int /*<<< orphan*/  cp; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ STRINGINFO ;
typedef  TYPE_2__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    STRINGINFO si;

#if FICL_ROBUST > 1
    vmCheckStack(pVM,2,2);
#endif

    si.count = FUNC1(pVM->pStack);
    si.cp = FUNC2(pVM->pStack);

    FUNC0(pVM, si, NULL);
}