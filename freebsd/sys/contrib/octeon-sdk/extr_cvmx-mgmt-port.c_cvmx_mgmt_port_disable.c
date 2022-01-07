
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ cvmx_mgmt_port_state_t ;
typedef int cvmx_mgmt_port_result_t ;
struct TYPE_5__ {scalar_t__ en; } ;
struct TYPE_7__ {int u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_agl_gmx_prtx_cfg_t ;


 int CVMX_AGL_GMX_PRTX_CFG (int) ;
 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_SUCCESS ;
 int __cvmx_mgmt_port_num_ports () ;
 TYPE_2__* cvmx_mgmt_port_state_ptr ;
 int cvmx_read_csr (int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,int ) ;

cvmx_mgmt_port_result_t cvmx_mgmt_port_disable(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_agl_gmx_prtx_cfg_t agl_gmx_prtx;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);

    agl_gmx_prtx.u64 = cvmx_read_csr(CVMX_AGL_GMX_PRTX_CFG(port));
    agl_gmx_prtx.s.en = 0;
    cvmx_write_csr(CVMX_AGL_GMX_PRTX_CFG(port), agl_gmx_prtx.u64);

    cvmx_spinlock_unlock(&state->lock);
    return CVMX_MGMT_PORT_SUCCESS;
}
