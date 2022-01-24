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
typedef  int /*<<< orphan*/  UNS16 ;
struct TYPE_7__ {int /*<<< orphan*/  pStack; } ;
struct TYPE_6__ {void* cp; scalar_t__ count; } ;
typedef  TYPE_1__ STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_HASH ;
typedef  scalar_t__ FICL_COUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(FICL_VM *pVM)
{
    STRINGINFO si;
    UNS16 hashCode;
    FICL_WORD *pFW;
    FICL_HASH *pHash = FUNC3(pVM->pStack);

    si.count         = (FICL_COUNT)FUNC4(pVM->pStack);
    si.cp            = FUNC3(pVM->pStack);
    hashCode         = FUNC1(si);

    FUNC0(TRUE);
    pFW = FUNC2(pHash, si, hashCode);
    FUNC0(FALSE);

    if (pFW)
    {
        FUNC6(pVM->pStack, pFW);
        FUNC5(pVM->pStack, (FUNC8(pFW) ? 1 : -1));
    }
    else
    {
        FUNC7(pVM->pStack, 0);
    }

    return;
}