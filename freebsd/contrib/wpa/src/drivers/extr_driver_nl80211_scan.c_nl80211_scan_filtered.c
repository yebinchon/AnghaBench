
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpa_driver_nl80211_data {size_t num_filter_ssids; TYPE_1__* filter_ssids; } ;
struct TYPE_2__ {scalar_t__ const ssid_len; int ssid; } ;


 int WLAN_EID_SSID ;
 scalar_t__* get_ie (scalar_t__ const*,size_t,int ) ;
 scalar_t__ os_memcmp (scalar_t__ const*,int ,scalar_t__ const) ;

__attribute__((used)) static int nl80211_scan_filtered(struct wpa_driver_nl80211_data *drv,
     const u8 *ie, size_t ie_len)
{
 const u8 *ssid;
 size_t i;

 if (drv->filter_ssids == ((void*)0))
  return 0;

 ssid = get_ie(ie, ie_len, WLAN_EID_SSID);
 if (ssid == ((void*)0))
  return 1;

 for (i = 0; i < drv->num_filter_ssids; i++) {
  if (ssid[1] == drv->filter_ssids[i].ssid_len &&
      os_memcmp(ssid + 2, drv->filter_ssids[i].ssid, ssid[1]) ==
      0)
   return 0;
 }

 return 1;
}
