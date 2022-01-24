#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int port; } ;
typedef  TYPE_2__ cvmx_mgmt_port_state_t ;
struct TYPE_7__ {int full_duplex; int link_up; int speed; } ;
struct TYPE_9__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef  TYPE_3__ cvmx_helper_link_info_t ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_2__* cvmx_mgmt_port_state_ptr ; 

cvmx_helper_link_info_t FUNC3(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_helper_link_info_t result;

    state = cvmx_mgmt_port_state_ptr + port;
    result.u64 = 0;

    if (port > FUNC1())
    {
        FUNC2("WARNING: Invalid port %d\n", port);
        return result;
    }

    if (state->port != -1)
        return FUNC0(state->port);
    else // Simulator does not have PHY, use some defaults.
    {
        result.s.full_duplex = 1;
        result.s.link_up = 1;
        result.s.speed = 100;
        return result;
    }
    return result;
}