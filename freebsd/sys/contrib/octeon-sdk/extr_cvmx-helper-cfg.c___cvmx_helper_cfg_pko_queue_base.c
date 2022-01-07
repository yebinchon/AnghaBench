
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccppp_queue_base; } ;


 TYPE_1__* cvmx_cfg_pko_port ;

int __cvmx_helper_cfg_pko_queue_base(int pko_port)
{
    return cvmx_cfg_pko_port[pko_port].ccppp_queue_base;
}
