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
struct TYPE_8__ {int /*<<< orphan*/  here; } ;
struct TYPE_7__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_DICT ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC5(FICL_DICT *dp, FICL_VM *pVM, char *tag)
{
    CELL *patchAddr;
    char *cp;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 2, 0);
#endif
    cp = FUNC1(pVM->pStack);
    /*
    ** Changed the comparison below to compare the pointers first (by popular demand)
    */
    if ((cp != tag) && FUNC2(cp, tag))
    {
        FUNC4(pVM, "Warning -- Unmatched control word: ", 0);
        FUNC4(pVM, tag, 1);
    }

    patchAddr = (CELL *)FUNC1(pVM->pStack);
    *patchAddr = FUNC0(dp->here);

    return;
}