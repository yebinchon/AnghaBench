
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int scan_id_count; int * scan_id; int conf; } ;
struct wpa_ssid {int ssid_len; int ssid; scalar_t__ scan_ssid; } ;
struct wpa_driver_scan_params {int dummy; } ;


 int wpa_add_owe_scan_ssid (struct wpa_supplicant*,struct wpa_driver_scan_params*,struct wpa_ssid*,size_t) ;
 int wpa_add_scan_ssid (struct wpa_supplicant*,struct wpa_driver_scan_params*,size_t,int ,int ) ;
 struct wpa_ssid* wpa_config_get_network (int ,int ) ;

__attribute__((used)) static void wpa_set_scan_ssids(struct wpa_supplicant *wpa_s,
          struct wpa_driver_scan_params *params,
          size_t max_ssids)
{
 unsigned int i;
 struct wpa_ssid *ssid;





 max_ssids = max_ssids > 1 ? max_ssids - 1 : max_ssids;

 for (i = 0; i < wpa_s->scan_id_count; i++) {
  ssid = wpa_config_get_network(wpa_s->conf, wpa_s->scan_id[i]);
  if (!ssid)
   continue;
  if (ssid->scan_ssid)
   wpa_add_scan_ssid(wpa_s, params, max_ssids,
       ssid->ssid, ssid->ssid_len);




  wpa_add_owe_scan_ssid(wpa_s, params, ssid, max_ssids);
 }

 wpa_s->scan_id_count = 0;
}
