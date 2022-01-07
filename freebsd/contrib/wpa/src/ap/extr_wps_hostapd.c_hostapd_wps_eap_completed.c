
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int iface; } ;


 int MSG_DEBUG ;
 int eloop_deplete_timeout (int ,int ,int ,int ,int *) ;
 int wpa_printf (int ,char*) ;
 int wps_reload_config ;

void hostapd_wps_eap_completed(struct hostapd_data *hapd)
{






 if (eloop_deplete_timeout(0, 0, wps_reload_config, hapd->iface, ((void*)0)) ==
     1)
  wpa_printf(MSG_DEBUG, "WPS: Reschedule immediate configuration reload");
}
