
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* wps; struct hostapd_data* iface; } ;
struct TYPE_2__ {int upnp_msgs; int registrar; } ;


 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_free_wps (TYPE_1__*) ;
 int hostapd_wps_ap_pin_timeout ;
 int hostapd_wps_clear_ies (struct hostapd_data*,int) ;
 int hostapd_wps_reenable_ap_pin ;
 int hostapd_wps_upnp_deinit (struct hostapd_data*) ;
 int wps_free_pending_msgs (int ) ;
 int wps_registrar_deinit (int ) ;
 int wps_reload_config ;

void hostapd_deinit_wps(struct hostapd_data *hapd)
{
 eloop_cancel_timeout(hostapd_wps_reenable_ap_pin, hapd, ((void*)0));
 eloop_cancel_timeout(hostapd_wps_ap_pin_timeout, hapd, ((void*)0));
 eloop_cancel_timeout(wps_reload_config, hapd->iface, ((void*)0));
 if (hapd->wps == ((void*)0)) {
  hostapd_wps_clear_ies(hapd, 1);
  return;
 }



 wps_registrar_deinit(hapd->wps->registrar);
 wps_free_pending_msgs(hapd->wps->upnp_msgs);
 hostapd_free_wps(hapd->wps);
 hapd->wps = ((void*)0);
 hostapd_wps_clear_ies(hapd, 1);
}
