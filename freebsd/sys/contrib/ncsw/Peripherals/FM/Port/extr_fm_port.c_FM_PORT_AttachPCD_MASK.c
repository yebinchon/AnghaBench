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
typedef  int t_Handle ;
struct TYPE_2__ {scalar_t__ portType; int /*<<< orphan*/  lock; int /*<<< orphan*/  pcdEngines; scalar_t__ h_ReassemblyTree; int /*<<< orphan*/  h_Spinlock; scalar_t__ imEn; int /*<<< orphan*/  p_FmPortDriverParam; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_OPERATION ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FM_PCD_CC ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ; 
 scalar_t__ e_FM_PORT_TYPE_RX ; 
 scalar_t__ e_FM_PORT_TYPE_RX_10G ; 

t_Error FUNC7(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    FUNC5(h_FmPort, E_INVALID_HANDLE);
    FUNC5(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if (p_FmPort->imEn)
        FUNC4(MAJOR, E_INVALID_OPERATION,
                     ("available for non-independent mode ports only"));

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX_10G)
            && (p_FmPort->portType != e_FM_PORT_TYPE_RX)
            && (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
        FUNC4( MAJOR, E_INVALID_OPERATION,
                     ("available for Rx and offline parsing ports only"));

    if (!FUNC6(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        FUNC1(TRACE, ("FM Port Try Lock - BUSY"));
        return FUNC2(E_BUSY);
    }

    if (p_FmPort->h_ReassemblyTree)
        p_FmPort->pcdEngines |= FM_PCD_CC;

    err = FUNC0(h_FmPort);
    FUNC3(p_FmPort->lock);

    return err;
}