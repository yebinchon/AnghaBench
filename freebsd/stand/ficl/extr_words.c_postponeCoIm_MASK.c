#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * p; } ;
struct TYPE_7__ {int /*<<< orphan*/  pStack; int /*<<< orphan*/  pSys; } ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_1__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(FICL_VM *pVM)
{
    FICL_DICT *dp  = FUNC8(pVM);
    FICL_WORD *pFW;
    FICL_WORD *pComma = FUNC3(pVM->pSys, ",");
    FUNC1(pComma);

    FUNC4(pVM);
    pFW = FUNC6(pVM->pStack).p;
    if (FUNC9(pFW))
    {
        FUNC2(dp, FUNC7(pVM->pStack));
    }
    else
    {
        FUNC5(pVM);
        FUNC2(dp, FUNC0(pComma));
    }
    
    return;
}