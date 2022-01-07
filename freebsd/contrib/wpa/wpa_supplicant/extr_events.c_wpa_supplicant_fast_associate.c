
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ last_scan_res_used; int last_scan; scalar_t__ ignore_post_flush_scan_res; } ;
struct os_reltime {int dummy; } ;


 int MSG_DEBUG ;
 int os_get_reltime (struct os_reltime*) ;
 scalar_t__ os_reltime_expired (struct os_reltime*,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpas_select_network_from_last_scan (struct wpa_supplicant*,int ,int) ;

int wpa_supplicant_fast_associate(struct wpa_supplicant *wpa_s)
{



 struct os_reltime now;

 wpa_s->ignore_post_flush_scan_res = 0;

 if (wpa_s->last_scan_res_used == 0)
  return -1;

 os_get_reltime(&now);
 if (os_reltime_expired(&now, &wpa_s->last_scan, 5)) {
  wpa_printf(MSG_DEBUG, "Fast associate: Old scan results");
  return -1;
 }

 return wpas_select_network_from_last_scan(wpa_s, 0, 1);

}
