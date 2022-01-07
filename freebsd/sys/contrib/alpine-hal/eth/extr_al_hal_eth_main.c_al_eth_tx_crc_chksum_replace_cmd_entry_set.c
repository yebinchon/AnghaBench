
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry {scalar_t__ crc_en_11; scalar_t__ l4_csum_en_11; scalar_t__ l3_csum_en_11; scalar_t__ crc_en_10; scalar_t__ l4_csum_en_10; scalar_t__ l3_csum_en_10; scalar_t__ crc_en_01; scalar_t__ l4_csum_en_01; scalar_t__ l3_csum_en_01; scalar_t__ crc_en_00; scalar_t__ l4_csum_en_00; scalar_t__ l3_csum_en_00; } ;
struct TYPE_3__ {int crc_csum_replace_table; int crc_csum_replace_table_addr; } ;
struct TYPE_4__ {TYPE_1__ tfw_v3; } ;


 int L4_CHECKSUM_DIS_AND_L3_CHECKSUM_DIS ;
 int L4_CHECKSUM_DIS_AND_L3_CHECKSUM_EN ;
 int L4_CHECKSUM_EN_AND_L3_CHECKSUM_DIS ;
 int L4_CHECKSUM_EN_AND_L3_CHECKSUM_EN ;
 int al_reg_write32 (int *,int) ;

int al_eth_tx_crc_chksum_replace_cmd_entry_set(struct al_hal_eth_adapter *adapter, uint32_t idx,
  struct al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry *tx_replace_entry)
{
 uint32_t replace_table_address;
 uint32_t tx_replace_cmd;


 replace_table_address = L4_CHECKSUM_DIS_AND_L3_CHECKSUM_DIS | idx;
 tx_replace_cmd = (uint32_t)(tx_replace_entry->l3_csum_en_00) << 0;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->l4_csum_en_00) << 1;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->crc_en_00) << 2;
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table_addr, replace_table_address);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table,
   tx_replace_cmd);
 replace_table_address = L4_CHECKSUM_DIS_AND_L3_CHECKSUM_EN | idx;
 tx_replace_cmd = (uint32_t)(tx_replace_entry->l3_csum_en_01) << 0;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->l4_csum_en_01) << 1;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->crc_en_01) << 2;
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table_addr, replace_table_address);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table,
   tx_replace_cmd);
 replace_table_address = L4_CHECKSUM_EN_AND_L3_CHECKSUM_DIS | idx;
 tx_replace_cmd = (uint32_t)(tx_replace_entry->l3_csum_en_10) << 0;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->l4_csum_en_10) << 1;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->crc_en_10) << 2;
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table_addr, replace_table_address);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table,
   tx_replace_cmd);
 replace_table_address = L4_CHECKSUM_EN_AND_L3_CHECKSUM_EN | idx;
 tx_replace_cmd = (uint32_t)(tx_replace_entry->l3_csum_en_11) << 0;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->l4_csum_en_11) << 1;
 tx_replace_cmd |= (uint32_t)(tx_replace_entry->crc_en_11) << 2;
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table_addr, replace_table_address);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.crc_csum_replace_table,
   tx_replace_cmd);

 return 0;
}
