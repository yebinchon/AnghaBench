#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  int /*<<< orphan*/  FICL_DICT ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int nSEARCH_CELLS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static FICL_WORD *FUNC3(FICL_VM *pVM, CELL *cp)
{
    FICL_WORD *pFW;
    FICL_DICT *pd = FUNC2(pVM);
    int i;

    if (!FUNC0(pd, (void *)cp))
        return NULL;

    for (i = nSEARCH_CELLS; i > 0; --i, --cp)
    {
        pFW = (FICL_WORD *)(cp + 1 - (sizeof (FICL_WORD) / sizeof (CELL)));
        if (FUNC1(pd, pFW))
            return pFW;
    }

    return NULL;
}