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
struct TYPE_8__ {TYPE_1__* pSys; } ;
struct TYPE_7__ {int /*<<< orphan*/  pLoopParen; } ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  doTag ; 
 int /*<<< orphan*/  leaveTag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC5(pVM);

    FUNC1(pVM->pSys->pLoopParen);

    FUNC2(dp, FUNC0(pVM->pSys->pLoopParen));
    FUNC4(dp, pVM, doTag);
    FUNC3(dp, pVM, leaveTag);
    return;
}