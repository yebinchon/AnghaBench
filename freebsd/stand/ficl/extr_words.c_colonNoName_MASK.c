#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_1__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  COMPILE ; 
 int FW_DEFAULT ; 
 int FW_SMUDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  colonParen ; 
 int /*<<< orphan*/  colonTag ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC5(pVM);
    FICL_WORD *pFW;
    STRINGINFO si;

    FUNC1(si, 0);
    FUNC2(si, NULL);

    pVM->state = COMPILE;
    pFW = FUNC3(dp, si, colonParen, FW_DEFAULT | FW_SMUDGE);
    FUNC0(pFW);
    FUNC4(pVM, colonTag);
    return;
}