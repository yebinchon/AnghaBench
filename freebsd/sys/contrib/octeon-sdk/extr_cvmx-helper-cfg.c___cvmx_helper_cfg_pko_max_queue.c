
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ccppp_queue_base; scalar_t__ ccppp_num_queues; } ;


 scalar_t__ CVMX_HELPER_CFG_INVALID_VALUE ;
 int CVMX_HELPER_CFG_MAX_PKO_PORT ;
 TYPE_1__* cvmx_cfg_pko_port ;
 int cvmx_helper_cfg_assert (int) ;

int __cvmx_helper_cfg_pko_max_queue(void)
{
    int i;

    i = CVMX_HELPER_CFG_MAX_PKO_PORT - 1;

    while (i >= 0)
    {
        if (cvmx_cfg_pko_port[i].ccppp_queue_base !=
     CVMX_HELPER_CFG_INVALID_VALUE)
 {
     cvmx_helper_cfg_assert(cvmx_cfg_pko_port[i].ccppp_num_queues > 0);
     return (cvmx_cfg_pko_port[i].ccppp_queue_base +
         cvmx_cfg_pko_port[i].ccppp_num_queues);
 }
 i --;
    }

    cvmx_helper_cfg_assert(0);

    return 0;
}
