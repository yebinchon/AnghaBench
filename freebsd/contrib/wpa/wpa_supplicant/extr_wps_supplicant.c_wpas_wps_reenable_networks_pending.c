
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_is_timeout_registered (int ,struct wpa_supplicant*,int *) ;
 int wpas_wps_reenable_networks_cb ;

int wpas_wps_reenable_networks_pending(struct wpa_supplicant *wpa_s)
{
 return eloop_is_timeout_registered(wpas_wps_reenable_networks_cb,
        wpa_s, ((void*)0));
}
