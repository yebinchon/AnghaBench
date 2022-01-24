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
struct TYPE_2__ {scalar_t__ portType; int pcdEngines; int /*<<< orphan*/  lock; int /*<<< orphan*/ * h_ReassemblyTree; int /*<<< orphan*/  h_FmPcd; scalar_t__ includeInPrsStatistics; int /*<<< orphan*/  hardwarePortId; int /*<<< orphan*/  netEnvId; int /*<<< orphan*/  h_Spinlock; scalar_t__ imEn; int /*<<< orphan*/  p_FmPortDriverParam; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_OPERATION ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_OK ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FM_PCD_PRS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ; 
 scalar_t__ e_FM_PORT_TYPE_RX ; 
 scalar_t__ e_FM_PORT_TYPE_RX_10G ; 

t_Error FUNC13(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    FUNC11(h_FmPort, E_INVALID_HANDLE);
    FUNC11(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if (p_FmPort->imEn)
        FUNC10(MAJOR, E_INVALID_OPERATION,
                     ("available for non-independant mode ports only"));

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX_10G)
            && (p_FmPort->portType != e_FM_PORT_TYPE_RX)
            && (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
        FUNC10( MAJOR, E_INVALID_OPERATION,
                     ("available for Rx and offline parsing ports only"));

    if (!FUNC12(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        FUNC0(TRACE, ("FM Port Try Lock - BUSY"));
        return FUNC3(E_BUSY);
    }

    err = FUNC2(h_FmPort);
    if (err)
    {
        FUNC9(p_FmPort->lock);
        FUNC10(MAJOR, err, NO_MSG);
    }

    FUNC5(p_FmPort->h_FmPcd, p_FmPort->netEnvId);

    /* we do it anyway, instead of checking if included */
    if ((p_FmPort->pcdEngines & FM_PCD_PRS) && p_FmPort->includeInPrsStatistics)
    {
        FUNC8(p_FmPort->h_FmPcd,
                                        p_FmPort->hardwarePortId, FALSE);
        p_FmPort->includeInPrsStatistics = FALSE;
    }

    if (!FUNC6(p_FmPort->h_FmPcd))
    {
        FUNC9(p_FmPort->lock);
        FUNC0(TRACE, ("Try LockAll - BUSY"));
        return FUNC3(E_BUSY);
    }

    err = FUNC1(h_FmPort);
    FUNC7(p_FmPort->h_FmPcd);
    if (err)
    {
        FUNC9(p_FmPort->lock);
        FUNC10(MAJOR, err, NO_MSG);
    }

    if (p_FmPort->h_ReassemblyTree)
    {
        err = FUNC4(p_FmPort->h_ReassemblyTree);
        if (err)
        {
            FUNC9(p_FmPort->lock);
            FUNC10(MAJOR, err, NO_MSG);
        }
        p_FmPort->h_ReassemblyTree = NULL;
    }FUNC9(p_FmPort->lock);

    return err;
}