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
struct TYPE_8__ {TYPE_1__* pSys; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {scalar_t__ nLocals; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  COMPILE ; 
 int FW_DEFAULT ; 
 int FW_SMUDGE ; 
 int /*<<< orphan*/  colonParen ; 
 int /*<<< orphan*/  colonTag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC3(pVM);
    STRINGINFO si = FUNC4(pVM);

    FUNC1(dp);

    pVM->state = COMPILE;
    FUNC2(pVM, colonTag);
    FUNC0(dp, si, colonParen, FW_DEFAULT | FW_SMUDGE);
#if FICL_WANT_LOCALS
    pVM->pSys->nLocals = 0;
#endif
    return;
}