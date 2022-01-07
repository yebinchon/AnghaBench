
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_hal_eth_adapter {scalar_t__ rev_id; TYPE_1__* ec_regs_base; int name; } ;
struct TYPE_4__ {int crc_csum_replace; int tx_gcp_legacy; } ;
struct TYPE_3__ {TYPE_2__ tfw_v3; } ;


 scalar_t__ AL_ETH_REV_ID_2 ;
 int AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM ;
 int al_assert (int) ;
 int al_dbg (char*,int ) ;
 int * al_eth_generic_tx_crc_gcp ;
 int al_eth_tx_generic_crc_table_entry_set (struct al_hal_eth_adapter*,int,int *) ;
 int al_reg_write32 (int *,int) ;

int al_eth_tx_generic_crc_table_init(struct al_hal_eth_adapter *adapter)
{
 int idx;
 al_assert((adapter->rev_id > AL_ETH_REV_ID_2));

 al_dbg("eth [%s]: enable tx_generic_crc\n", adapter->name);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gcp_legacy, 0x0);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace, 0x0);
 for (idx = 0; idx < AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM; idx++)
  al_eth_tx_generic_crc_table_entry_set(adapter, idx,
    &al_eth_generic_tx_crc_gcp[idx]);

 return 0;
}
