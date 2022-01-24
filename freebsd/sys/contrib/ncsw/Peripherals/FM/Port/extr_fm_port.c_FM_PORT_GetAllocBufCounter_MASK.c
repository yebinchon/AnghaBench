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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ portType; int /*<<< orphan*/  port; int /*<<< orphan*/  p_FmPortDriverParam; } ;
typedef  TYPE_1__ t_FmPort ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ e_FM_PORT_TYPE_RX ; 
 scalar_t__ e_FM_PORT_TYPE_RX_10G ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uint32_t FUNC4(t_Handle h_FmPort, uint8_t poolId)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC2(p_FmPort, E_INVALID_HANDLE, 0);
    FUNC1(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX)
            && (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
    {
        FUNC0(MINOR, E_INVALID_STATE, ("Requested counter is not available for non-Rx ports"));
        return 0;
    }
    return FUNC3(&p_FmPort->port, poolId);
}