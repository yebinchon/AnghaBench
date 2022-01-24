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
typedef  int uint64_t ;
struct TYPE_6__ {int mac; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ cvmx_mgmt_port_state_t ;
typedef  int /*<<< orphan*/  cvmx_mgmt_port_result_t ;
struct TYPE_5__ {int cam_mode; int bcst; scalar_t__ mcst; } ;
struct TYPE_7__ {int u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_agl_gmx_rxx_adr_ctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_SUCCESS ; 
 int FUNC8 () ; 
 TYPE_2__* cvmx_mgmt_port_state_ptr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

cvmx_mgmt_port_result_t FUNC12(int port, uint64_t mac)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_rxx_adr_ctl_t agl_gmx_rxx_adr_ctl;

    if ((port < 0) || (port >= FUNC8()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    FUNC9(&state->lock);

    agl_gmx_rxx_adr_ctl.u64 = 0;
    agl_gmx_rxx_adr_ctl.s.cam_mode = 1; /* Only accept matching MAC addresses */
    agl_gmx_rxx_adr_ctl.s.mcst = 0;     /* Drop multicast */
    agl_gmx_rxx_adr_ctl.s.bcst = 1;     /* Allow broadcast */
    FUNC11(FUNC7(port), agl_gmx_rxx_adr_ctl.u64);

    /* Only using one of the CAMs */
    FUNC11(FUNC0(port), (mac >> 40) & 0xff);
    FUNC11(FUNC1(port), (mac >> 32) & 0xff);
    FUNC11(FUNC2(port), (mac >> 24) & 0xff);
    FUNC11(FUNC3(port), (mac >> 16) & 0xff);
    FUNC11(FUNC4(port), (mac >> 8) & 0xff);
    FUNC11(FUNC5(port), (mac >> 0) & 0xff);
    FUNC11(FUNC6(port), 1);
    state->mac = mac;

    FUNC10(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}