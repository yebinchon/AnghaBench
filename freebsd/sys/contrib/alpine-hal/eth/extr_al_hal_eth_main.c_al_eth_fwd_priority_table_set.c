
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* rfw_priority; } ;
struct TYPE_3__ {int queue; } ;


 size_t AL_ETH_FWD_PRIO_TABLE_NUM ;
 int al_assert (int) ;
 int al_reg_write32 (int *,size_t) ;

int al_eth_fwd_priority_table_set(struct al_hal_eth_adapter *adapter, uint8_t prio, uint8_t qid)
{
 al_assert(prio < AL_ETH_FWD_PRIO_TABLE_NUM);

 al_reg_write32(&adapter->ec_regs_base->rfw_priority[prio].queue, qid);
 return 0;
}
