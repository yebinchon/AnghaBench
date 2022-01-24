#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nLists; } ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  TYPE_1__ FICL_DICT ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 scalar_t__ FICL_DEFAULT_VOCS ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(FICL_DICT *pDict, FICL_VM *pVM, int n)
{
    if ((n >= 0) && (FUNC0(pDict) * (int)sizeof(CELL) < n))
    {
        FUNC3(pVM, "Error: dictionary full");
    }

    if ((n <= 0) && (FUNC1(pDict) * (int)sizeof(CELL) < -n))
    {
        FUNC3(pVM, "Error: dictionary underflow");
    }

    if (pDict->nLists > FICL_DEFAULT_VOCS)
    {
        FUNC2(pDict);
        FUNC3(pVM, "Error: search order overflow");
    }
    else if (pDict->nLists < 0)
    {
        FUNC2(pDict);
        FUNC3(pVM, "Error: search order underflow");
    }

    return;
}