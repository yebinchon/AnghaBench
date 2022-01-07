
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum al_eth_mac_mode { ____Placeholder_al_eth_mac_mode } al_eth_mac_mode ;
__attribute__((used)) static const char *al_eth_mac_mode_str(enum al_eth_mac_mode mode)
{
 switch(mode) {
 case 133:
  return "RGMII";
 case 132:
  return "SGMII";
 case 131:
  return "SGMII_2_5G";
 case 135:
  return "KR";
        case 134:
  return "KR_LL_25G";
 case 136:
  return "10G_SGMII";
 case 129:
  return "40G_LL";
 case 128:
  return "50G_LL";
 case 130:
  return "25G_LL";
 default:
  return "N/A";
 }
}
