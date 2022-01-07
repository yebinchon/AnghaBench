
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {TYPE_2__* wps; TYPE_1__* conf; } ;
struct TYPE_4__ {int registrar; int upc; int model_url; int model_description; int manufacturer_url; int friendly_name; } ;
struct TYPE_3__ {scalar_t__ wps_state; int upc; int model_url; int model_description; int manufacturer_url; int friendly_name; } ;


 int hostapd_deinit_wps (struct hostapd_data*) ;
 int hostapd_wps_set_vendor_ext (struct hostapd_data*,TYPE_2__*) ;
 int wps_registrar_update_ie (int ) ;

void hostapd_update_wps(struct hostapd_data *hapd)
{
 if (hapd->wps == ((void*)0))
  return;
 hostapd_wps_set_vendor_ext(hapd, hapd->wps);

 if (hapd->conf->wps_state)
  wps_registrar_update_ie(hapd->wps->registrar);
 else
  hostapd_deinit_wps(hapd);
}
