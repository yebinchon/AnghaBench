
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpa_scan_res {int dummy; } ;
struct bgscan_learn_data {TYPE_1__* ssid; } ;
struct TYPE_2__ {scalar_t__ const ssid_len; int ssid; } ;


 int WLAN_EID_SSID ;
 scalar_t__ os_memcmp (int ,scalar_t__ const*,scalar_t__ const) ;
 scalar_t__* wpa_scan_get_ie (struct wpa_scan_res*,int ) ;

__attribute__((used)) static int bgscan_learn_bss_match(struct bgscan_learn_data *data,
      struct wpa_scan_res *bss)
{
 const u8 *ie;

 ie = wpa_scan_get_ie(bss, WLAN_EID_SSID);
 if (ie == ((void*)0))
  return 0;

 if (data->ssid->ssid_len != ie[1] ||
     os_memcmp(data->ssid->ssid, ie + 2, ie[1]) != 0)
  return 0;

 return 1;
}
