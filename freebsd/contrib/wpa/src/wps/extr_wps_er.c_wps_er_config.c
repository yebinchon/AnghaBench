
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wps_er_ap {TYPE_2__* ap_settings; scalar_t__ wps; int * uuid; } ;
struct wps_er {int skip_set_sel_reg; TYPE_1__* wps; } ;
struct wps_credential {int dummy; } ;
struct TYPE_5__ {int * cred_attr; } ;
struct TYPE_4__ {int registrar; } ;


 int MSG_DEBUG ;
 int os_free (TYPE_2__*) ;
 TYPE_2__* os_memdup (struct wps_credential const*,int) ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_config_m1 ;
 struct wps_er_ap* wps_er_ap_get (struct wps_er*,int *,int const*,int const*) ;
 scalar_t__ wps_er_send_get_device_info (struct wps_er_ap*,int ) ;
 int wps_registrar_add_pin (int ,int *,int const*,int const*,size_t,int ) ;

int wps_er_config(struct wps_er *er, const u8 *uuid, const u8 *addr,
    const u8 *pin, size_t pin_len,
    const struct wps_credential *cred)
{
 struct wps_er_ap *ap;

 if (er == ((void*)0))
  return -1;

 ap = wps_er_ap_get(er, ((void*)0), uuid, addr);
 if (ap == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: AP not found for config "
      "request");
  return -1;
 }
 if (uuid == ((void*)0))
  uuid = ap->uuid;
 if (ap->wps) {
  wpa_printf(MSG_DEBUG, "WPS ER: Pending operation ongoing "
      "with the AP - cannot start config");
  return -1;
 }

 os_free(ap->ap_settings);
 ap->ap_settings = os_memdup(cred, sizeof(*cred));
 if (ap->ap_settings == ((void*)0))
  return -1;
 ap->ap_settings->cred_attr = ((void*)0);

 if (wps_er_send_get_device_info(ap, wps_er_ap_config_m1) < 0)
  return -1;

 er->skip_set_sel_reg = 1;
 wps_registrar_add_pin(er->wps->registrar, ((void*)0), uuid, pin, pin_len, 0);
 er->skip_set_sel_reg = 0;

 return 0;
}
