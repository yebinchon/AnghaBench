
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ countermeasures; } ;


 int MSG_INFO ;
 int wpa_drv_set_countermeasures (struct wpa_supplicant*,int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

void wpa_supplicant_stop_countermeasures(void *eloop_ctx, void *sock_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (wpa_s->countermeasures) {
  wpa_s->countermeasures = 0;
  wpa_drv_set_countermeasures(wpa_s, 0);
  wpa_msg(wpa_s, MSG_INFO, "WPA: TKIP countermeasures stopped");
  wpa_supplicant_cancel_sched_scan(wpa_s);
  wpa_supplicant_req_scan(wpa_s, 0, 0);
 }
}
