
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_1__* ec_regs_base; } ;
typedef int al_bool ;
struct TYPE_4__ {int tx_vid_table_data; int tx_vid_table_addr; } ;
struct TYPE_3__ {TYPE_2__ tfw; } ;


 scalar_t__ AL_ETH_FWD_VID_TABLE_NUM ;
 int AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC ;
 int AL_ETH_TX_VLAN_TABLE_UDMA_MASK ;
 int AL_REG_FIELD_SET (scalar_t__,int ,int,int ) ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_tx_fwd_vid_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx,
    uint8_t udma_mask, al_bool fwd_to_mac)
{
 uint32_t val = 0;
 al_assert(idx < AL_ETH_FWD_VID_TABLE_NUM);
 AL_REG_FIELD_SET(val, AL_ETH_TX_VLAN_TABLE_UDMA_MASK, 0, udma_mask);
 AL_REG_FIELD_SET(val, AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC, 4, fwd_to_mac);

 al_reg_write32(&adapter->ec_regs_base->tfw.tx_vid_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->tfw.tx_vid_table_data, val);
 return 0;
}
