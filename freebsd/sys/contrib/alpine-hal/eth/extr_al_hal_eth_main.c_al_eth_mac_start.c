
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_3__* mac_regs_base; int mac_mode; } ;
struct TYPE_4__ {int cmd_cfg; } ;
struct TYPE_5__ {int cmd_cfg; } ;
struct TYPE_6__ {TYPE_1__ mac_10g; TYPE_2__ mac_1g; } ;


 scalar_t__ AL_ETH_IS_10G_MAC (int ) ;
 scalar_t__ AL_ETH_IS_1G_MAC (int ) ;
 scalar_t__ AL_ETH_IS_25G_MAC (int ) ;
 int ETH_10G_MAC_CMD_CFG_RX_ENA ;
 int ETH_10G_MAC_CMD_CFG_TX_ENA ;
 int ETH_1G_MAC_CMD_CFG_RX_ENA ;
 int ETH_1G_MAC_CMD_CFG_TX_ENA ;
 int ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR ;
 int ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA ;
 int ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA ;
 int al_eth_40g_mac_reg_read (struct al_hal_eth_adapter*,int ) ;
 int al_eth_40g_mac_reg_write (struct al_hal_eth_adapter*,int ,int) ;
 int al_reg_write32_masked (int *,int,int) ;

int al_eth_mac_start(struct al_hal_eth_adapter *adapter)
{
 if (AL_ETH_IS_1G_MAC(adapter->mac_mode)) {

  al_reg_write32_masked(&adapter->mac_regs_base->mac_1g.cmd_cfg,
    ETH_1G_MAC_CMD_CFG_TX_ENA | ETH_1G_MAC_CMD_CFG_RX_ENA,
    ETH_1G_MAC_CMD_CFG_TX_ENA | ETH_1G_MAC_CMD_CFG_RX_ENA);
 } else if (AL_ETH_IS_10G_MAC(adapter->mac_mode) || AL_ETH_IS_25G_MAC(adapter->mac_mode)) {

  al_reg_write32_masked(&adapter->mac_regs_base->mac_10g.cmd_cfg,
    ETH_10G_MAC_CMD_CFG_TX_ENA | ETH_10G_MAC_CMD_CFG_RX_ENA,
    ETH_10G_MAC_CMD_CFG_TX_ENA | ETH_10G_MAC_CMD_CFG_RX_ENA);
 } else {
  uint32_t cmd_cfg;

  cmd_cfg = al_eth_40g_mac_reg_read(adapter,
    ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR);

  cmd_cfg |= (ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA |
       ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA);

  al_eth_40g_mac_reg_write(adapter,
    ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR,
    cmd_cfg);
 }

 return 0;
}
