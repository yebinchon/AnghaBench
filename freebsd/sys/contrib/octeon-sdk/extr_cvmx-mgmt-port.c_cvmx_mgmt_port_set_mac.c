
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int mac; int lock; } ;
typedef TYPE_2__ cvmx_mgmt_port_state_t ;
typedef int cvmx_mgmt_port_result_t ;
struct TYPE_5__ {int cam_mode; int bcst; scalar_t__ mcst; } ;
struct TYPE_7__ {int u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_agl_gmx_rxx_adr_ctl_t ;


 int CVMX_AGL_GMX_RXX_ADR_CAM0 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM1 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM2 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM3 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM4 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM5 (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CAM_EN (int) ;
 int CVMX_AGL_GMX_RXX_ADR_CTL (int) ;
 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_SUCCESS ;
 int __cvmx_mgmt_port_num_ports () ;
 TYPE_2__* cvmx_mgmt_port_state_ptr ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,int) ;

cvmx_mgmt_port_result_t cvmx_mgmt_port_set_mac(int port, uint64_t mac)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_rxx_adr_ctl_t agl_gmx_rxx_adr_ctl;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);

    agl_gmx_rxx_adr_ctl.u64 = 0;
    agl_gmx_rxx_adr_ctl.s.cam_mode = 1;
    agl_gmx_rxx_adr_ctl.s.mcst = 0;
    agl_gmx_rxx_adr_ctl.s.bcst = 1;
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CTL(port), agl_gmx_rxx_adr_ctl.u64);


    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM0(port), (mac >> 40) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM1(port), (mac >> 32) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM2(port), (mac >> 24) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM3(port), (mac >> 16) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM4(port), (mac >> 8) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM5(port), (mac >> 0) & 0xff);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_ADR_CAM_EN(port), 1);
    state->mac = mac;

    cvmx_spinlock_unlock(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}
