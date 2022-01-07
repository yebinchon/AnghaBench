
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int lock; } ;
typedef TYPE_3__ cvmx_mgmt_port_state_t ;
typedef int cvmx_mgmt_port_result_t ;
struct TYPE_7__ {int pre_align; int pad_len; int vlan_len; int pre_free; int ctl_mcst; int ctl_bck; int ctl_drp; int pre_strp; int pre_chk; scalar_t__ ctl_smac; } ;
struct TYPE_10__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_agl_gmx_rxx_frm_ctl_t ;
struct TYPE_8__ {int en; } ;
struct TYPE_11__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_5__ cvmx_agl_gmx_inf_mode_t ;


 int CVMX_AGL_GMX_INF_MODE ;
 int CVMX_AGL_GMX_RXX_FRM_CTL (int) ;
 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_SUCCESS ;
 int OCTEON_CN5XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_mgmt_port_num_ports () ;
 int cvmx_mgmt_port_link_get (int) ;
 int cvmx_mgmt_port_link_set (int,int ) ;
 TYPE_3__* cvmx_mgmt_port_state_ptr ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,scalar_t__) ;

cvmx_mgmt_port_result_t cvmx_mgmt_port_enable(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_inf_mode_t agl_gmx_inf_mode;
    cvmx_agl_gmx_rxx_frm_ctl_t rxx_frm_ctl;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);

    rxx_frm_ctl.u64 = 0;
    rxx_frm_ctl.s.pre_align = 1;
    rxx_frm_ctl.s.pad_len = 1;
    rxx_frm_ctl.s.vlan_len = 1;
    rxx_frm_ctl.s.pre_free = 1;
    rxx_frm_ctl.s.ctl_smac = 0;
    rxx_frm_ctl.s.ctl_mcst = 1;
    rxx_frm_ctl.s.ctl_bck = 1;
    rxx_frm_ctl.s.ctl_drp = 1;
    rxx_frm_ctl.s.pre_strp = 1;
    rxx_frm_ctl.s.pre_chk = 1;
    cvmx_write_csr(CVMX_AGL_GMX_RXX_FRM_CTL(port), rxx_frm_ctl.u64);


    if (OCTEON_IS_MODEL(OCTEON_CN5XXX))
    {
        agl_gmx_inf_mode.u64 = 0;
        agl_gmx_inf_mode.s.en = 1;
        cvmx_write_csr(CVMX_AGL_GMX_INF_MODE, agl_gmx_inf_mode.u64);
    }


    cvmx_mgmt_port_link_set(port, cvmx_mgmt_port_link_get(port));

    cvmx_spinlock_unlock(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}
