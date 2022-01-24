#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_8__ {int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_1__ t_FmMacParams ;
struct TYPE_9__ {scalar_t__ clkFreq; int /*<<< orphan*/  resetOnInit; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_2__ t_FmMacControllerDriver ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_resetOnInit ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ e_ENET_SPEED_10000 ; 

t_Handle FUNC7 (t_FmMacParams *p_FmMacParam)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver;
    uint16_t                fmClkFreq;

    FUNC5(p_FmMacParam, E_INVALID_HANDLE, NULL);

    fmClkFreq = FUNC2(p_FmMacParam->h_Fm);
    if (fmClkFreq == 0)
    {
        FUNC4(MAJOR, E_INVALID_STATE, ("Can't get clock for MAC!"));
        return NULL;
    }

#if (DPAA_VERSION == 10)
    if (ENET_SPEED_FROM_MODE(p_FmMacParam->enetMode) < e_ENET_SPEED_10000)
        p_FmMacControllerDriver = (t_FmMacControllerDriver *)DTSEC_Config(p_FmMacParam);
    else
#if FM_MAX_NUM_OF_10G_MACS > 0
        p_FmMacControllerDriver = (t_FmMacControllerDriver *)TGEC_Config(p_FmMacParam);
#else
        p_FmMacControllerDriver = NULL;
#endif /* FM_MAX_NUM_OF_10G_MACS > 0 */
#else
    p_FmMacControllerDriver = (t_FmMacControllerDriver *)FUNC3(p_FmMacParam);
#endif /* (DPAA_VERSION == 10) */

    if (!p_FmMacControllerDriver)
        return NULL;

    p_FmMacControllerDriver->h_Fm           = p_FmMacParam->h_Fm;
    p_FmMacControllerDriver->enetMode       = p_FmMacParam->enetMode;
    p_FmMacControllerDriver->macId          = p_FmMacParam->macId;
    p_FmMacControllerDriver->resetOnInit    = DEFAULT_resetOnInit;

    p_FmMacControllerDriver->clkFreq        = fmClkFreq;

    return (t_Handle)p_FmMacControllerDriver;
}