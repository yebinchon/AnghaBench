
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int pbits_table_data; int pbits_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 scalar_t__ AL_ETH_FWD_PBITS_TABLE_NUM ;
 scalar_t__ AL_ETH_FWD_PRIO_TABLE_NUM ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_fwd_pbits_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint8_t prio)
{

 al_assert(idx < AL_ETH_FWD_PBITS_TABLE_NUM);
 al_assert(prio < AL_ETH_FWD_PRIO_TABLE_NUM);
 al_reg_write32(&adapter->ec_regs_base->rfw.pbits_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->rfw.pbits_table_data, prio);
 return 0;
}
