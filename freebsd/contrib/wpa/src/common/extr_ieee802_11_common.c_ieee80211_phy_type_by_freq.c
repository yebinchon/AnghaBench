
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum phy_type { ____Placeholder_phy_type } phy_type ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;






 int PHY_TYPE_DMG ;
 int PHY_TYPE_ERP ;
 int PHY_TYPE_HRDSSS ;
 int PHY_TYPE_OFDM ;
 int PHY_TYPE_UNSPECIFIED ;
 int ieee80211_freq_to_chan (int,int *) ;

__attribute__((used)) static enum phy_type ieee80211_phy_type_by_freq(int freq)
{
 enum hostapd_hw_mode hw_mode;
 u8 channel;

 hw_mode = ieee80211_freq_to_chan(freq, &channel);

 switch (hw_mode) {
 case 131:
  return PHY_TYPE_OFDM;
 case 129:
  return PHY_TYPE_HRDSSS;
 case 128:
  return PHY_TYPE_ERP;
 case 130:
  return PHY_TYPE_DMG;
 default:
  return PHY_TYPE_UNSPECIFIED;
 };
}
