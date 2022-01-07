
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_tx_gpd_cam_entry {int tx_gpd_cam_ctrl; scalar_t__ source_vlan_count_mask; scalar_t__ tunnel_control_mask; scalar_t__ l4_proto_idx_mask; scalar_t__ l3_proto_idx_mask; scalar_t__ source_vlan_count; scalar_t__ tunnel_control; scalar_t__ l4_proto_idx; scalar_t__ l3_proto_idx; } ;
struct TYPE_3__ {int tx_gpd_cam_data_1; int tx_gpd_cam_data_2; int tx_gpd_cam_mask_1; int tx_gpd_cam_mask_2; int tx_gpd_cam_ctrl; int tx_gpd_cam_addr; } ;
struct TYPE_4__ {TYPE_1__ tfw_v3; } ;


 int AL_ETH_TX_GPD_CAM_CTRL_VALID_SHIFT ;
 int AL_ETH_TX_GPD_CAM_DATA_2_SHIFT ;
 int AL_ETH_TX_GPD_CAM_MASK_2_SHIFT ;
 int AL_ETH_TX_GPD_L3_PROTO_MASK ;
 int AL_ETH_TX_GPD_L3_PROTO_SHIFT ;
 int AL_ETH_TX_GPD_L4_PROTO_MASK ;
 int AL_ETH_TX_GPD_L4_PROTO_SHIFT ;
 int AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK ;
 int AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT ;
 int AL_ETH_TX_GPD_TUNNEL_CTRL_MASK ;
 int AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT ;
 int al_dbg (char*,int,int) ;
 int al_reg_write32 (int *,int) ;

int al_eth_tx_protocol_detect_table_entry_set(struct al_hal_eth_adapter *adapter, uint32_t idx,
  struct al_eth_tx_gpd_cam_entry *tx_gpd_entry)
{
 uint64_t gpd_data;
 uint64_t gpd_mask;

 gpd_data = ((uint64_t)tx_gpd_entry->l3_proto_idx & AL_ETH_TX_GPD_L3_PROTO_MASK) <<
  AL_ETH_TX_GPD_L3_PROTO_SHIFT;
 gpd_data |= ((uint64_t)tx_gpd_entry->l4_proto_idx & AL_ETH_TX_GPD_L4_PROTO_MASK) <<
  AL_ETH_TX_GPD_L4_PROTO_SHIFT;
 gpd_data |= ((uint64_t)tx_gpd_entry->tunnel_control & AL_ETH_TX_GPD_TUNNEL_CTRL_MASK) <<
  AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT;
 gpd_data |= ((uint64_t)tx_gpd_entry->source_vlan_count & AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK) <<
  AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT;
 gpd_mask = ((uint64_t)tx_gpd_entry->l3_proto_idx_mask & AL_ETH_TX_GPD_L3_PROTO_MASK) <<
  AL_ETH_TX_GPD_L3_PROTO_SHIFT;
 gpd_mask |= ((uint64_t)tx_gpd_entry->l4_proto_idx_mask & AL_ETH_TX_GPD_L4_PROTO_MASK) <<
  AL_ETH_TX_GPD_L4_PROTO_SHIFT;
 gpd_mask |= ((uint64_t)tx_gpd_entry->tunnel_control_mask & AL_ETH_TX_GPD_TUNNEL_CTRL_MASK) <<
  AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT;
 gpd_mask |= ((uint64_t)tx_gpd_entry->source_vlan_count_mask & AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK) <<
  AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT;


 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_ctrl,
   (uint32_t)((tx_gpd_entry->tx_gpd_cam_ctrl) << AL_ETH_TX_GPD_CAM_CTRL_VALID_SHIFT));
 al_dbg("al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_ctrl: %#x", idx, tx_gpd_entry->tx_gpd_cam_ctrl);
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_mask_2,
   (uint32_t)(gpd_mask >> AL_ETH_TX_GPD_CAM_MASK_2_SHIFT));
 al_dbg("al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_mask_2: %#x", idx, (uint32_t)(gpd_mask >> AL_ETH_TX_GPD_CAM_MASK_2_SHIFT));
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_mask_1,
   (uint32_t)(gpd_mask));
 al_dbg("al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_mask_1: %#x", idx, (uint32_t)(gpd_mask));
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_data_2,
   (uint32_t)(gpd_data >> AL_ETH_TX_GPD_CAM_DATA_2_SHIFT));
 al_dbg("al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_data_2: %#x", idx, (uint32_t)(gpd_data >> AL_ETH_TX_GPD_CAM_DATA_2_SHIFT));
 al_reg_write32(&adapter->ec_regs_base->tfw_v3.tx_gpd_cam_data_1,
   (uint32_t)(gpd_data));
 al_dbg("al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_data_1: %#x", idx, (uint32_t)(gpd_data));
 return 0;
}
