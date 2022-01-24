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
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* f_LoopDequeueRingCB ) (scalar_t__) ;int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  scalar_t__ e_QmPortalPollSource ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ e_QM_PORTAL_POLL_SOURCE_BOTH ; 
 scalar_t__ e_QM_PORTAL_POLL_SOURCE_CONTROL_FRAMES ; 
 scalar_t__ e_QM_PORTAL_POLL_SOURCE_DATA_FRAMES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

t_Error FUNC7(t_Handle h_QmPortal, e_QmPortalPollSource source)
{
    t_QmPortal  *p_QmPortal = (t_QmPortal *)h_QmPortal;

    FUNC3(p_QmPortal, E_INVALID_HANDLE);

    FUNC1(p_QmPortal);

    if ((source == e_QM_PORTAL_POLL_SOURCE_CONTROL_FRAMES) ||
        (source == e_QM_PORTAL_POLL_SOURCE_BOTH))
    {
        uint32_t is = FUNC5(p_QmPortal->p_LowQmPortal);
        uint32_t active = FUNC0(p_QmPortal, is);
        if (active)
            FUNC4(p_QmPortal->p_LowQmPortal, active);
    }
    if ((source == e_QM_PORTAL_POLL_SOURCE_DATA_FRAMES) ||
        (source == e_QM_PORTAL_POLL_SOURCE_BOTH))
        p_QmPortal->f_LoopDequeueRingCB((t_Handle)p_QmPortal);

    FUNC2(p_QmPortal);

    return E_OK;
}