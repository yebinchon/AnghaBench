
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {size_t num_ssids_from_scan_req; TYPE_1__* ssids_from_scan_req; } ;
struct wpa_driver_scan_params {unsigned int num_ssids; TYPE_2__* ssids; } ;
struct TYPE_4__ {int ssid_len; int ssid; } ;
struct TYPE_3__ {int ssid_len; int ssid; } ;


 int MSG_DEBUG ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,unsigned int) ;

__attribute__((used)) static int wpa_set_ssids_from_scan_req(struct wpa_supplicant *wpa_s,
           struct wpa_driver_scan_params *params,
           size_t max_ssids)
{
 unsigned int i;

 if (wpa_s->ssids_from_scan_req == ((void*)0) ||
     wpa_s->num_ssids_from_scan_req == 0)
  return 0;

 if (wpa_s->num_ssids_from_scan_req > max_ssids) {
  wpa_s->num_ssids_from_scan_req = max_ssids;
  wpa_printf(MSG_DEBUG, "Over max scan SSIDs from scan req: %u",
      (unsigned int) max_ssids);
 }

 for (i = 0; i < wpa_s->num_ssids_from_scan_req; i++) {
  params->ssids[i].ssid = wpa_s->ssids_from_scan_req[i].ssid;
  params->ssids[i].ssid_len =
   wpa_s->ssids_from_scan_req[i].ssid_len;
  wpa_hexdump_ascii(MSG_DEBUG, "specific SSID",
      params->ssids[i].ssid,
      params->ssids[i].ssid_len);
 }

 params->num_ssids = wpa_s->num_ssids_from_scan_req;
 wpa_s->num_ssids_from_scan_req = 0;
 return 1;
}
