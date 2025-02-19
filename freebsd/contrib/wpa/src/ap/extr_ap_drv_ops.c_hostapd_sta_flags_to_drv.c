
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_MFP ;
 int WLAN_STA_SHORT_PREAMBLE ;
 int WLAN_STA_WMM ;
 int WPA_STA_ASSOCIATED ;
 int WPA_STA_AUTHENTICATED ;
 int WPA_STA_AUTHORIZED ;
 int WPA_STA_MFP ;
 int WPA_STA_SHORT_PREAMBLE ;
 int WPA_STA_WMM ;

u32 hostapd_sta_flags_to_drv(u32 flags)
{
 int res = 0;
 if (flags & WLAN_STA_AUTHORIZED)
  res |= WPA_STA_AUTHORIZED;
 if (flags & WLAN_STA_WMM)
  res |= WPA_STA_WMM;
 if (flags & WLAN_STA_SHORT_PREAMBLE)
  res |= WPA_STA_SHORT_PREAMBLE;
 if (flags & WLAN_STA_MFP)
  res |= WPA_STA_MFP;
 if (flags & WLAN_STA_AUTH)
  res |= WPA_STA_AUTHENTICATED;
 if (flags & WLAN_STA_ASSOC)
  res |= WPA_STA_ASSOCIATED;
 return res;
}
