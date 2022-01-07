
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_hal_eth_adapter {scalar_t__ mac_mode; int name; } ;
typedef scalar_t__ al_bool ;


 scalar_t__ AL_ETH_IS_1G_MAC (scalar_t__) ;
 scalar_t__ AL_ETH_MAC_MODE_RGMII ;
 scalar_t__ AL_ETH_MAC_MODE_SGMII_2_5G ;
 scalar_t__ AL_FALSE ;
 scalar_t__ AL_TRUE ;
 int EINVAL ;
 int al_err (char*,int ,...) ;
 int al_eth_mac_link_config_10g_mac (struct al_hal_eth_adapter*,scalar_t__,scalar_t__,int,scalar_t__) ;
 int al_eth_mac_link_config_1g_mac (struct al_hal_eth_adapter*,scalar_t__,scalar_t__,int,scalar_t__) ;
 int al_info (char*,int ,...) ;

int al_eth_mac_link_config(struct al_hal_eth_adapter *adapter,
      al_bool force_1000_base_x,
      al_bool an_enable,
      uint32_t speed,
      al_bool full_duplex)
{
 if ((!AL_ETH_IS_1G_MAC(adapter->mac_mode)) &&
  (adapter->mac_mode != AL_ETH_MAC_MODE_SGMII_2_5G)) {
  al_err("eth [%s]: this function not supported in this mac mode.\n",
          adapter->name);
  return -EINVAL;
 }

 if ((adapter->mac_mode != AL_ETH_MAC_MODE_RGMII) && (an_enable)) {




  al_info("eth [%s]: set auto negotiation to enable\n", adapter->name);
 } else {
  al_info("eth [%s]: set link speed to %dMbps. %s duplex.\n", adapter->name,
   speed, full_duplex == AL_TRUE ? "full" : "half");

  if ((speed != 10) && (speed != 100) && (speed != 1000)) {
   al_err("eth [%s]: bad speed parameter (%d).\n",
           adapter->name, speed);
   return -EINVAL;
  }
  if ((speed == 1000) && (full_duplex == AL_FALSE)) {
   al_err("eth [%s]: half duplex in 1Gbps is not supported.\n",
           adapter->name);
   return -EINVAL;
  }
 }

 if (AL_ETH_IS_1G_MAC(adapter->mac_mode))
  al_eth_mac_link_config_1g_mac(adapter,
           force_1000_base_x,
           an_enable,
           speed,
           full_duplex);
 else
  al_eth_mac_link_config_10g_mac(adapter,
            force_1000_base_x,
            an_enable,
            speed,
            full_duplex);

 return 0;
}
