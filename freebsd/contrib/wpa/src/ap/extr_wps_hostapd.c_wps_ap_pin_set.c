
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_ap_pin_data {int timeout; int pin_txt; } ;
struct hostapd_data {int wps_upnp; TYPE_1__* conf; int wps; } ;
struct TYPE_2__ {int ap_pin; } ;


 int hostapd_wps_ap_pin_enable (struct hostapd_data*,int ) ;
 int os_free (int ) ;
 int os_strdup (int ) ;
 int upnp_wps_set_ap_pin (int ,int ) ;

__attribute__((used)) static int wps_ap_pin_set(struct hostapd_data *hapd, void *ctx)
{
 struct wps_ap_pin_data *data = ctx;

 if (!hapd->wps)
  return 0;

 os_free(hapd->conf->ap_pin);
 hapd->conf->ap_pin = os_strdup(data->pin_txt);



 hostapd_wps_ap_pin_enable(hapd, data->timeout);
 return 0;
}
