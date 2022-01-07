
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {scalar_t__ rev_id; TYPE_6__* mac_regs_base; int mac_mode; TYPE_2__* ec_regs_base; } ;
struct TYPE_11__ {int frm_len; } ;
struct TYPE_10__ {int frm_len; } ;
struct TYPE_9__ {int rx_afifo_cfg_2; int rx_afifo_cfg_1; } ;
struct TYPE_12__ {TYPE_5__ mac_10g; TYPE_4__ mac_1g; TYPE_3__ gen_v3; } ;
struct TYPE_7__ {int max_pkt; int min_pkt; } ;
struct TYPE_8__ {TYPE_1__ mac; } ;


 scalar_t__ AL_ETH_IS_10G_MAC (int ) ;
 scalar_t__ AL_ETH_IS_1G_MAC (int ) ;
 scalar_t__ AL_ETH_IS_25G_MAC (int ) ;
 scalar_t__ AL_ETH_MAX_FRAME_LEN ;
 scalar_t__ AL_ETH_REV_ID_2 ;
 int ETH_MAC_GEN_V3_MAC_40G_FRM_LENGTH_ADDR ;
 int al_assert (int) ;
 int al_eth_40g_mac_reg_write (struct al_hal_eth_adapter*,int ,scalar_t__) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_rx_pkt_limit_config(struct al_hal_eth_adapter *adapter, uint32_t min_rx_len, uint32_t max_rx_len)
{
 al_assert(max_rx_len <= AL_ETH_MAX_FRAME_LEN);


 al_reg_write32(&adapter->ec_regs_base->mac.min_pkt, min_rx_len);

 al_reg_write32(&adapter->ec_regs_base->mac.max_pkt, max_rx_len);

 if (adapter->rev_id > AL_ETH_REV_ID_2) {
  al_reg_write32(&adapter->mac_regs_base->gen_v3.rx_afifo_cfg_1, min_rx_len);
  al_reg_write32(&adapter->mac_regs_base->gen_v3.rx_afifo_cfg_2, max_rx_len);
 }




 if (AL_ETH_IS_1G_MAC(adapter->mac_mode))
  al_reg_write32(&adapter->mac_regs_base->mac_1g.frm_len, max_rx_len + 16);
 else if (AL_ETH_IS_10G_MAC(adapter->mac_mode) || AL_ETH_IS_25G_MAC(adapter->mac_mode))

  al_reg_write32(&adapter->mac_regs_base->mac_10g.frm_len, (max_rx_len + 16));
 else
  al_eth_40g_mac_reg_write(adapter, ETH_MAC_GEN_V3_MAC_40G_FRM_LENGTH_ADDR, (max_rx_len + 16));

 return 0;
}
