
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccppl_index; } ;


 TYPE_1__* cvmx_cfg_pko_port_map ;

int __cvmx_helper_cfg_pko_port_index(int pko_port)
{
    return cvmx_cfg_pko_port_map[pko_port].ccppl_index;
}
