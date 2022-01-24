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
struct TYPE_7__ {TYPE_1__* vmList; int /*<<< orphan*/ * localp; int /*<<< orphan*/ * envp; int /*<<< orphan*/ * dp; } ;
struct TYPE_6__ {struct TYPE_6__* link; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_SYSTEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(FICL_SYSTEM *pSys)
{
    if (pSys->dp)
        FUNC0(pSys->dp);
    pSys->dp = NULL;

    if (pSys->envp)
        FUNC0(pSys->envp);
    pSys->envp = NULL;

#if FICL_WANT_LOCALS
    if (pSys->localp)
        dictDelete(pSys->localp);
    pSys->localp = NULL;
#endif

    while (pSys->vmList != NULL)
    {
        FICL_VM *pVM = pSys->vmList;
        pSys->vmList = pSys->vmList->link;
        FUNC2(pVM);
    }

    FUNC1(pSys);
    pSys = NULL;
    return;
}