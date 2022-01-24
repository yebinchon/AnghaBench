#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * origXT; int /*<<< orphan*/ ** address; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** ip; int /*<<< orphan*/  pSys; } ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_BREAKPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(FICL_VM *pVM, FICL_BREAKPOINT *pBP)
{
    FICL_WORD *pStep = FUNC1(pVM->pSys, "step-break");
    FUNC0(pStep);

    pBP->address = pVM->ip;
    pBP->origXT = *pVM->ip;
    *pVM->ip = pStep;
}