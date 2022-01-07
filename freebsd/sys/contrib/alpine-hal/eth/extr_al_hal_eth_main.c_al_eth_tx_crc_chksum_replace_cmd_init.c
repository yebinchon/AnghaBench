
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {scalar_t__ rev_id; } ;


 scalar_t__ AL_ETH_REV_ID_2 ;
 int AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM ;
 int al_assert (int) ;
 int * al_eth_tx_crc_chksum_replace_cmd ;
 int al_eth_tx_crc_chksum_replace_cmd_entry_set (struct al_hal_eth_adapter*,int,int *) ;

int al_eth_tx_crc_chksum_replace_cmd_init(struct al_hal_eth_adapter *adapter)
{
 int idx;
 al_assert((adapter->rev_id > AL_ETH_REV_ID_2));

 for (idx = 0; idx < AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM; idx++)
  al_eth_tx_crc_chksum_replace_cmd_entry_set(adapter, idx,
    &al_eth_tx_crc_chksum_replace_cmd[idx]);

 return 0;
}
