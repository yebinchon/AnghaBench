
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; int scan_req; scalar_t__ sched_scanning; int current_ssid; int disconnected; scalar_t__ reassociate; TYPE_1__* conf; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int NORMAL_SCAN_REQ ;
 scalar_t__ WPA_DISCONNECTED ;
 scalar_t__ WPA_SCANNING ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_enable_one_network (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpa_supplicant_fast_associate (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

void wpa_supplicant_enable_network(struct wpa_supplicant *wpa_s,
       struct wpa_ssid *ssid)
{
 if (ssid == ((void*)0)) {
  for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next)
   wpa_supplicant_enable_one_network(wpa_s, ssid);
 } else
  wpa_supplicant_enable_one_network(wpa_s, ssid);

 if (wpa_s->reassociate && !wpa_s->disconnected &&
     (!wpa_s->current_ssid ||
      wpa_s->wpa_state == WPA_DISCONNECTED ||
      wpa_s->wpa_state == WPA_SCANNING)) {
  if (wpa_s->sched_scanning) {
   wpa_printf(MSG_DEBUG, "Stop ongoing sched_scan to add "
       "new network to scan filters");
   wpa_supplicant_cancel_sched_scan(wpa_s);
  }

  if (wpa_supplicant_fast_associate(wpa_s) != 1) {
   wpa_s->scan_req = NORMAL_SCAN_REQ;
   wpa_supplicant_req_scan(wpa_s, 0, 0);
  }
 }
}
