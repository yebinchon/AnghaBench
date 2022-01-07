
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int wps_upnp; TYPE_1__* conf; } ;
struct TYPE_2__ {int * ap_pin; } ;


 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_wps_ap_pin_timeout ;
 int os_free (int *) ;
 int upnp_wps_set_ap_pin (int ,int *) ;

__attribute__((used)) static int wps_ap_pin_disable(struct hostapd_data *hapd, void *ctx)
{
 os_free(hapd->conf->ap_pin);
 hapd->conf->ap_pin = ((void*)0);



 eloop_cancel_timeout(hostapd_wps_ap_pin_timeout, hapd, ((void*)0));
 return 0;
}
