#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  (* f_FM_MAC_Init ) (scalar_t__) ;int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  h_Fm; int /*<<< orphan*/  f_FM_MAC_ConfigResetOnInit; scalar_t__ resetOnInit; } ;
typedef  TYPE_1__ t_FmMacControllerDriver ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ e_ENET_IF_XGMII ; 
 int /*<<< orphan*/  e_FM_MAC_10G ; 
 int /*<<< orphan*/  e_FM_MAC_1G ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

t_Error FUNC5 (t_Handle h_FmMac)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    FUNC3(p_FmMacControllerDriver, E_INVALID_HANDLE);

    if (p_FmMacControllerDriver->resetOnInit &&
        !p_FmMacControllerDriver->f_FM_MAC_ConfigResetOnInit &&
        (FUNC1(p_FmMacControllerDriver->h_Fm,
                    ((FUNC0(p_FmMacControllerDriver->enetMode) == e_ENET_IF_XGMII) ?
                        e_FM_MAC_10G : e_FM_MAC_1G),
                    p_FmMacControllerDriver->macId) != E_OK))
        FUNC2(MAJOR, E_INVALID_STATE, ("Can't reset MAC!"));

    if (p_FmMacControllerDriver->f_FM_MAC_Init)
        return p_FmMacControllerDriver->f_FM_MAC_Init(h_FmMac);
    FUNC2(MINOR, E_NOT_SUPPORTED, NO_MSG);
}