#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nLists; int /*<<< orphan*/ * pSearch; int /*<<< orphan*/  pCompile; } ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  TYPE_1__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
    FICL_DICT *pDict = FUNC1(pVM);

    FUNC0(pDict);
    if (pDict->nLists < 1)
    {
        FUNC2(pVM, "DEFINITIONS error - empty search order");
    }

    pDict->pCompile = pDict->pSearch[pDict->nLists-1];
    return;
}