
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_supplicant* next; } ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct wpa_global {struct wpa_supplicant* ifaces; TYPE_1__ suspend_time; } ;
struct os_time {int sec; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_DISCONNECTED ;
 int os_get_time (struct os_time*) ;
 int wpa_drv_resume (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,int) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int) ;

void wpas_notify_resume(struct wpa_global *global)
{
 struct os_time now;
 int slept;
 struct wpa_supplicant *wpa_s;

 if (global->suspend_time.sec == 0)
  slept = -1;
 else {
  os_get_time(&now);
  slept = now.sec - global->suspend_time.sec;
 }
 wpa_printf(MSG_DEBUG, "System resume notification (slept %d seconds)",
     slept);

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  wpa_drv_resume(wpa_s);
  if (wpa_s->wpa_state == WPA_DISCONNECTED)
   wpa_supplicant_req_scan(wpa_s, 0, 100000);
 }
}
