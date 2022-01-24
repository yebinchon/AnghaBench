#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pStack; TYPE_1__* pSys; } ;
struct TYPE_5__ {int /*<<< orphan*/  pTwoLitParen; } ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC4(pVM);
    FUNC1(pVM->pSys->pTwoLitParen);

    FUNC2(dp, FUNC0(pVM->pSys->pTwoLitParen));
    FUNC2(dp, FUNC3(pVM->pStack));
    FUNC2(dp, FUNC3(pVM->pStack));

    return;
}