
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sta_info {int addr; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_3__ {size_t ssid_len; int ssid; } ;
struct TYPE_4__ {TYPE_1__ ssid; } ;


 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,int ) ;
 scalar_t__ os_memcmp (int const*,int ,size_t) ;
 int wpa_ssid_txt (int const*,size_t) ;

__attribute__((used)) static u16 check_ssid(struct hostapd_data *hapd, struct sta_info *sta,
        const u8 *ssid_ie, size_t ssid_ie_len)
{
 if (ssid_ie == ((void*)0))
  return WLAN_STATUS_UNSPECIFIED_FAILURE;

 if (ssid_ie_len != hapd->conf->ssid.ssid_len ||
     os_memcmp(ssid_ie, hapd->conf->ssid.ssid, ssid_ie_len) != 0) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_INFO,
          "Station tried to associate with unknown SSID "
          "'%s'", wpa_ssid_txt(ssid_ie, ssid_ie_len));
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 return WLAN_STATUS_SUCCESS;
}
