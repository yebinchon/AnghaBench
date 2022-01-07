
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ cvmx_mgmt_port_state_t ;


 int CVMX_AGL_GMX_RXX_FRM_MAX (int) ;
 int CVMX_AGL_GMX_RXX_JABBER (int) ;
 int __cvmx_mgmt_port_num_ports () ;
 TYPE_1__* cvmx_mgmt_port_state_ptr ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,int) ;

void cvmx_mgmt_port_set_max_packet_size(int port, int size_without_fcs)
{
    cvmx_mgmt_port_state_t *state;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_FRM_MAX(port), size_without_fcs);
    cvmx_write_csr(CVMX_AGL_GMX_RXX_JABBER(port), (size_without_fcs+7) & 0xfff8);
    cvmx_spinlock_unlock(&state->lock);
}
