#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ cvmx_mgmt_port_state_t ;
typedef  int /*<<< orphan*/  cvmx_mgmt_port_result_t ;
struct TYPE_5__ {scalar_t__ en; } ;
struct TYPE_7__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_agl_gmx_prtx_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_SUCCESS ; 
 int FUNC1 () ; 
 TYPE_2__* cvmx_mgmt_port_state_ptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

cvmx_mgmt_port_result_t FUNC6(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_prtx_cfg_t agl_gmx_prtx;

    if ((port < 0) || (port >= FUNC1()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    FUNC3(&state->lock);

    agl_gmx_prtx.u64 = FUNC2(FUNC0(port));
    agl_gmx_prtx.s.en = 0;
    FUNC5(FUNC0(port), agl_gmx_prtx.u64);

    FUNC4(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}