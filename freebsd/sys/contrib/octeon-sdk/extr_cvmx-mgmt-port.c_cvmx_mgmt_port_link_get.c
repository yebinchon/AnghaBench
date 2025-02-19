
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int port; } ;
typedef TYPE_2__ cvmx_mgmt_port_state_t ;
struct TYPE_7__ {int full_duplex; int link_up; int speed; } ;
struct TYPE_9__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;


 TYPE_3__ __cvmx_helper_board_link_get (int) ;
 int __cvmx_mgmt_port_num_ports () ;
 int cvmx_dprintf (char*,int) ;
 TYPE_2__* cvmx_mgmt_port_state_ptr ;

cvmx_helper_link_info_t cvmx_mgmt_port_link_get(int port)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_helper_link_info_t result;

    state = cvmx_mgmt_port_state_ptr + port;
    result.u64 = 0;

    if (port > __cvmx_mgmt_port_num_ports())
    {
        cvmx_dprintf("WARNING: Invalid port %d\n", port);
        return result;
    }

    if (state->port != -1)
        return __cvmx_helper_board_link_get(state->port);
    else
    {
        result.s.full_duplex = 1;
        result.s.link_up = 1;
        result.s.speed = 100;
        return result;
    }
    return result;
}
