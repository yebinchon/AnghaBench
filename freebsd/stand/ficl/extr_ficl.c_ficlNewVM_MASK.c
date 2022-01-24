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
struct TYPE_8__ {TYPE_1__* vmList; int /*<<< orphan*/  textOut; int /*<<< orphan*/  pExtend; } ;
struct TYPE_7__ {int /*<<< orphan*/  pExtend; TYPE_2__* pSys; struct TYPE_7__* link; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_SYSTEM ;

/* Variables and functions */
 int /*<<< orphan*/  defaultStack ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

FICL_VM *FUNC2(FICL_SYSTEM *pSys)
{
    FICL_VM *pVM = FUNC0(NULL, defaultStack, defaultStack);
    pVM->link = pSys->vmList;
    pVM->pSys = pSys;
    pVM->pExtend = pSys->pExtend;
    FUNC1(pVM, pSys->textOut);

    pSys->vmList = pVM;
    return pVM;
}