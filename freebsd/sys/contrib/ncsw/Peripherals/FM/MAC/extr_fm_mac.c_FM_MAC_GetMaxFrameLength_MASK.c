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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  (* f_FM_MAC_GetMaxFrameLength ) (scalar_t__) ;} ;
typedef  TYPE_1__ t_FmMacControllerDriver ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

uint16_t FUNC3(t_Handle h_FmMac)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    FUNC1(p_FmMacControllerDriver, E_INVALID_HANDLE, 0);

    if (p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength)
        return p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength(h_FmMac);

    FUNC0(MINOR, E_NOT_SUPPORTED, NO_MSG);
    return 0;
}