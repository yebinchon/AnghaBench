#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ cvmx_mgmt_port_state_t ;
typedef  int /*<<< orphan*/  cvmx_mgmt_port_result_t ;
struct TYPE_7__ {int pre_align; int pad_len; int vlan_len; int pre_free; int ctl_mcst; int ctl_bck; int ctl_drp; int pre_strp; int pre_chk; scalar_t__ ctl_smac; } ;
struct TYPE_10__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_agl_gmx_rxx_frm_ctl_t ;
struct TYPE_8__ {int en; } ;
struct TYPE_11__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef  TYPE_5__ cvmx_agl_gmx_inf_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_AGL_GMX_INF_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_SUCCESS ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* cvmx_mgmt_port_state_ptr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

cvmx_mgmt_port_result_t FUNC8(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_inf_mode_t agl_gmx_inf_mode;
    cvmx_agl_gmx_rxx_frm_ctl_t rxx_frm_ctl;

    if ((port < 0) || (port >= FUNC2()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    FUNC5(&state->lock);

    rxx_frm_ctl.u64 = 0;
    rxx_frm_ctl.s.pre_align = 1;
    rxx_frm_ctl.s.pad_len = 1;  /* When set, disables the length check for non-min sized pkts with padding in the client data */
    rxx_frm_ctl.s.vlan_len = 1; /* When set, disables the length check for VLAN pkts */
    rxx_frm_ctl.s.pre_free = 1; /* When set, PREAMBLE checking is  less strict */
    rxx_frm_ctl.s.ctl_smac = 0; /* Control Pause Frames can match station SMAC */
    rxx_frm_ctl.s.ctl_mcst = 1; /* Control Pause Frames can match globally assign Multicast address */
    rxx_frm_ctl.s.ctl_bck = 1;  /* Forward pause information to TX block */
    rxx_frm_ctl.s.ctl_drp = 1;  /* Drop Control Pause Frames */
    rxx_frm_ctl.s.pre_strp = 1; /* Strip off the preamble */
    rxx_frm_ctl.s.pre_chk = 1;  /* This port is configured to send PREAMBLE+SFD to begin every frame.  GMX checks that the PREAMBLE is sent correctly */
    FUNC7(FUNC0(port), rxx_frm_ctl.u64);

    /* Enable the AGL block */
    if (FUNC1(OCTEON_CN5XXX))
    {
        agl_gmx_inf_mode.u64 = 0;
        agl_gmx_inf_mode.s.en = 1;
        FUNC7(CVMX_AGL_GMX_INF_MODE, agl_gmx_inf_mode.u64);
    }

    /* Configure the port duplex and enables */
    FUNC4(port, FUNC3(port));

    FUNC6(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}