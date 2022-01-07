
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; int suspend_time; } ;


 int MSG_DEBUG ;
 int os_get_time (int *) ;
 int wpa_drv_suspend (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*) ;

void wpas_notify_suspend(struct wpa_global *global)
{
 struct wpa_supplicant *wpa_s;

 os_get_time(&global->suspend_time);
 wpa_printf(MSG_DEBUG, "System suspend notification");
 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next)
  wpa_drv_suspend(wpa_s);
}
