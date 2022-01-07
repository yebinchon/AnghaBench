
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int reassociate; scalar_t__ reattach; scalar_t__ last_owe_group; scalar_t__ disconnected; scalar_t__ extra_blacklist_count; int scan_req; scalar_t__ normal_scans; } ;


 int NORMAL_SCAN_REQ ;
 int wpa_supplicant_fast_associate (struct wpa_supplicant*) ;
 int wpa_supplicant_reinit_autoscan (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

void wpas_request_connection(struct wpa_supplicant *wpa_s)
{
 wpa_s->normal_scans = 0;
 wpa_s->scan_req = NORMAL_SCAN_REQ;
 wpa_supplicant_reinit_autoscan(wpa_s);
 wpa_s->extra_blacklist_count = 0;
 wpa_s->disconnected = 0;
 wpa_s->reassociate = 1;
 wpa_s->last_owe_group = 0;

 if (wpa_supplicant_fast_associate(wpa_s) != 1)
  wpa_supplicant_req_scan(wpa_s, 0, 0);
 else
  wpa_s->reattach = 0;
}
