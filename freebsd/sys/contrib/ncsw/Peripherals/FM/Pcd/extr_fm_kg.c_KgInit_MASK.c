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
struct TYPE_7__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
struct TYPE_6__ {scalar_t__ h_HwSpinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

t_Error FUNC5(t_FmPcd *p_FmPcd)
{
    t_Error err = E_OK;

    p_FmPcd->p_FmPcdKg->h_HwSpinlock = FUNC4();
    if (!p_FmPcd->p_FmPcdKg->h_HwSpinlock)
        FUNC2(MAJOR, E_NO_MEMORY, ("FM KG HW spinlock"));

    if (p_FmPcd->guestId == NCSW_MASTER_ID)
        err =  FUNC1(p_FmPcd);
    else
        err =  FUNC0(p_FmPcd);

    if (err != E_OK)
    {
        if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
            FUNC3(p_FmPcd->p_FmPcdKg->h_HwSpinlock);
    }

    return err;
}