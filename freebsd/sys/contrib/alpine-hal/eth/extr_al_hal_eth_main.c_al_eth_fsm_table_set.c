
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int fsm_table_data; int fsm_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 scalar_t__ AL_ETH_RX_FSM_TABLE_SIZE ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_fsm_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint32_t entry)
{

 al_assert(idx < AL_ETH_RX_FSM_TABLE_SIZE);


 al_reg_write32(&adapter->ec_regs_base->rfw.fsm_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->rfw.fsm_table_data, entry);
 return 0;
}
