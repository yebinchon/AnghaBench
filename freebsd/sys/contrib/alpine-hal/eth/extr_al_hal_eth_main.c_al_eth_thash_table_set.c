
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_1__* ec_regs_base; } ;
struct TYPE_4__ {int thash_table_data; int thash_table_addr; } ;
struct TYPE_3__ {TYPE_2__ rfw; } ;


 scalar_t__ AL_ETH_RX_THASH_TABLE_SIZE ;
 scalar_t__ AL_ETH_THASH_Q_MASK ;
 scalar_t__ AL_ETH_THASH_Q_SHIFT ;
 scalar_t__ AL_ETH_THASH_UDMA_MASK ;
 scalar_t__ AL_ETH_THASH_UDMA_SHIFT ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_thash_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint8_t udma, uint32_t queue)
{
 uint32_t entry;
 al_assert(idx < AL_ETH_RX_THASH_TABLE_SIZE);

 entry = (udma << AL_ETH_THASH_UDMA_SHIFT) & AL_ETH_THASH_UDMA_MASK;
 entry |= (queue << AL_ETH_THASH_Q_SHIFT) & AL_ETH_THASH_Q_MASK;

 al_reg_write32(&adapter->ec_regs_base->rfw.thash_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->rfw.thash_table_data, entry);
 return 0;
}
