
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int dummy; } ;
struct wps_er {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_remove_entry (struct wps_er*,struct wps_er_ap*) ;

__attribute__((used)) static void wps_er_ap_timeout(void *eloop_data, void *user_ctx)
{
 struct wps_er *er = eloop_data;
 struct wps_er_ap *ap = user_ctx;
 wpa_printf(MSG_DEBUG, "WPS ER: AP advertisement timed out");
 wps_er_ap_remove_entry(er, ap);
}
