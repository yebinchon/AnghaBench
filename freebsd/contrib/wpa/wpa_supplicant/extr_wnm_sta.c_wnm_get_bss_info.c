
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_supplicant {int current_bss; } ;
struct wpa_bss {int caps; } ;


 int NEI_REP_BSSID_INFO_APSD ;
 int NEI_REP_BSSID_INFO_AP_UNKNOWN_REACH ;
 int NEI_REP_BSSID_INFO_DELAYED_BA ;
 int NEI_REP_BSSID_INFO_HT ;
 int NEI_REP_BSSID_INFO_IMM_BA ;
 int NEI_REP_BSSID_INFO_MOBILITY_DOMAIN ;
 int NEI_REP_BSSID_INFO_QOS ;
 int NEI_REP_BSSID_INFO_RM ;
 int NEI_REP_BSSID_INFO_SPECTRUM_MGMT ;
 int WLAN_CAPABILITY_APSD ;
 int WLAN_CAPABILITY_DELAYED_BLOCK_ACK ;
 int WLAN_CAPABILITY_IMM_BLOCK_ACK ;
 int WLAN_CAPABILITY_QOS ;
 int WLAN_CAPABILITY_RADIO_MEASUREMENT ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int WLAN_EID_HT_CAP ;
 int WLAN_EID_MOBILITY_DOMAIN ;
 scalar_t__ wpa_bss_ies_eq (struct wpa_bss*,int ,int ) ;

__attribute__((used)) static u32 wnm_get_bss_info(struct wpa_supplicant *wpa_s, struct wpa_bss *bss)
{
 u32 info = 0;

 info |= NEI_REP_BSSID_INFO_AP_UNKNOWN_REACH;






 if (bss->caps & WLAN_CAPABILITY_SPECTRUM_MGMT)
  info |= NEI_REP_BSSID_INFO_SPECTRUM_MGMT;
 if (bss->caps & WLAN_CAPABILITY_QOS)
  info |= NEI_REP_BSSID_INFO_QOS;
 if (bss->caps & WLAN_CAPABILITY_APSD)
  info |= NEI_REP_BSSID_INFO_APSD;
 if (bss->caps & WLAN_CAPABILITY_RADIO_MEASUREMENT)
  info |= NEI_REP_BSSID_INFO_RM;
 if (bss->caps & WLAN_CAPABILITY_DELAYED_BLOCK_ACK)
  info |= NEI_REP_BSSID_INFO_DELAYED_BA;
 if (bss->caps & WLAN_CAPABILITY_IMM_BLOCK_ACK)
  info |= NEI_REP_BSSID_INFO_IMM_BA;
 if (wpa_bss_ies_eq(bss, wpa_s->current_bss, WLAN_EID_MOBILITY_DOMAIN))
  info |= NEI_REP_BSSID_INFO_MOBILITY_DOMAIN;
 if (wpa_bss_ies_eq(bss, wpa_s->current_bss, WLAN_EID_HT_CAP))
  info |= NEI_REP_BSSID_INFO_HT;

 return info;
}
