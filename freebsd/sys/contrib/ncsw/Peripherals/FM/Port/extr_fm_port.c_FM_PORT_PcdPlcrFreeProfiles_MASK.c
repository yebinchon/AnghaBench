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
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  hardwarePortId; int /*<<< orphan*/  h_FmPcd; int /*<<< orphan*/  h_Spinlock; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

t_Error FUNC6(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    if (!FUNC5(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        FUNC0(TRACE, ("FM Port Try Lock - BUSY"));
        return FUNC1(E_BUSY);
    }

    err = FUNC2(p_FmPort->h_FmPcd, p_FmPort->hardwarePortId);

    FUNC3(p_FmPort->lock);

    if (err)
        FUNC4(MAJOR, err, NO_MSG);

    return E_OK;
}