
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_driver_scan_params {unsigned int num_ssids; TYPE_1__* ssids; } ;
struct TYPE_2__ {size_t ssid_len; int const* ssid; } ;


 int MSG_DEBUG ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_ssid_txt (int const*,size_t) ;

__attribute__((used)) static void wpa_add_scan_ssid(struct wpa_supplicant *wpa_s,
         struct wpa_driver_scan_params *params,
         size_t max_ssids, const u8 *ssid, size_t ssid_len)
{
 unsigned int j;

 for (j = 0; j < params->num_ssids; j++) {
  if (params->ssids[j].ssid_len == ssid_len &&
      params->ssids[j].ssid &&
      os_memcmp(params->ssids[j].ssid, ssid, ssid_len) == 0)
   return;
 }

 if (params->num_ssids + 1 > max_ssids) {
  wpa_printf(MSG_DEBUG, "Over max scan SSIDs for manual request");
  return;
 }

 wpa_printf(MSG_DEBUG, "Scan SSID (manual request): %s",
     wpa_ssid_txt(ssid, ssid_len));

 params->ssids[params->num_ssids].ssid = ssid;
 params->ssids[params->num_ssids].ssid_len = ssid_len;
 params->num_ssids++;
}
