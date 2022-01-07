
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_hal_eth_adapter {scalar_t__ rev_id; TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int gpd_p8; int gpd_p7; int gpd_p6; int gpd_p5; int gpd_p4; int gpd_p3; int gpd_p2; int gpd_p1; } ;
struct TYPE_4__ {TYPE_1__ rfw_v3; } ;


 scalar_t__ AL_ETH_REV_ID_2 ;
 int AL_ETH_RX_GPD_PARSE_RESULT_INNER_L3_PROTO_IDX_OFFSET ;
 int AL_ETH_RX_GPD_PARSE_RESULT_INNER_L4_PROTO_IDX_OFFSET ;
 int AL_ETH_RX_GPD_PARSE_RESULT_INNER_PARSE_CTRL ;
 int AL_ETH_RX_GPD_PARSE_RESULT_L3_PRIORITY ;
 int AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L3_PROTO_IDX_OFFSET ;
 int AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_DST_PORT_LSB ;
 int AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_PROTO_IDX_OFFSET ;
 int AL_ETH_RX_GPD_PARSE_RESULT_OUTER_PARSE_CTRL ;
 int AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM ;
 int al_assert (int) ;
 int * al_eth_generic_rx_crc_gpd ;
 int al_eth_rx_protocol_detect_table_entry_set (struct al_hal_eth_adapter*,int,int *) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_rx_protocol_detect_table_init(struct al_hal_eth_adapter *adapter)
{
 int idx;
 al_assert((adapter->rev_id > AL_ETH_REV_ID_2));
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p1,
   AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L3_PROTO_IDX_OFFSET);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p2,
   AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_PROTO_IDX_OFFSET);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p3,
   AL_ETH_RX_GPD_PARSE_RESULT_INNER_L3_PROTO_IDX_OFFSET);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p4,
   AL_ETH_RX_GPD_PARSE_RESULT_INNER_L4_PROTO_IDX_OFFSET);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p5,
   AL_ETH_RX_GPD_PARSE_RESULT_OUTER_PARSE_CTRL);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p6,
   AL_ETH_RX_GPD_PARSE_RESULT_INNER_PARSE_CTRL);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p7,
   AL_ETH_RX_GPD_PARSE_RESULT_L3_PRIORITY);
 al_reg_write32(&adapter->ec_regs_base->rfw_v3.gpd_p8,
   AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_DST_PORT_LSB);

 for (idx = 0; idx < AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM; idx++)
  al_eth_rx_protocol_detect_table_entry_set(adapter, idx,
    &al_eth_generic_rx_crc_gpd[idx]);
 return 0;
}
