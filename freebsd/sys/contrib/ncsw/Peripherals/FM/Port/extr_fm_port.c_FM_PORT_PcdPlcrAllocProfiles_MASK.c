#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  hardwarePortId; int /*<<< orphan*/  h_FmPcd; int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

t_Error FUNC9(t_Handle h_FmPort, uint16_t numOfProfiles)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    p_FmPort->h_FmPcd = FUNC3(p_FmPort->h_Fm);
    FUNC0(p_FmPort->h_FmPcd);

    if (!FUNC8(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        FUNC1(TRACE, ("FM Port Try Lock - BUSY"));
        return FUNC2(E_BUSY);
    }

    if (numOfProfiles)
    {
        err = FUNC4(p_FmPort->h_FmPcd,
                                     p_FmPort->hardwarePortId, numOfProfiles);
        if (err)
            FUNC7(MAJOR, err, NO_MSG);
    }
    /* set the port handle within the PCD policer, even if no profiles defined */
    FUNC5(p_FmPort->h_FmPcd, h_FmPort, p_FmPort->hardwarePortId);

    FUNC6(p_FmPort->lock);

    return E_OK;
}