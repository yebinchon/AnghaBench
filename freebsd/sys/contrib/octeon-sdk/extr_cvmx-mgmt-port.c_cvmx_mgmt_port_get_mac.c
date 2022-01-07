
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int mac; } ;


 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int __cvmx_mgmt_port_num_ports () ;
 TYPE_1__* cvmx_mgmt_port_state_ptr ;

uint64_t cvmx_mgmt_port_get_mac(int port)
{
    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    return cvmx_mgmt_port_state_ptr[port].mac;
}
