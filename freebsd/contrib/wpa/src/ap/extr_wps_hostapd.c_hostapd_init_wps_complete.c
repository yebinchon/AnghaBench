
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int registrar; } ;
struct hostapd_data {struct wps_context* wps; } ;


 int MSG_ERROR ;
 int hostapd_free_wps (struct wps_context*) ;
 scalar_t__ hostapd_wps_upnp_init (struct hostapd_data*,struct wps_context*) ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_deinit (int ) ;

int hostapd_init_wps_complete(struct hostapd_data *hapd)
{
 struct wps_context *wps = hapd->wps;

 if (wps == ((void*)0))
  return 0;
 return 0;
}
