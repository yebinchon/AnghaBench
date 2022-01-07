
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_er_ap {scalar_t__ wps; int * uuid; } ;
struct wps_er {int skip_set_sel_reg; TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 struct wps_er_ap* wps_er_ap_get (struct wps_er*,int *,int const*,int const*) ;
 int wps_er_ap_learn_m1 ;
 scalar_t__ wps_er_send_get_device_info (struct wps_er_ap*,int ) ;
 int wps_registrar_add_pin (int ,int *,int const*,int const*,size_t,int ) ;

int wps_er_learn(struct wps_er *er, const u8 *uuid, const u8 *addr,
   const u8 *pin, size_t pin_len)
{
 struct wps_er_ap *ap;

 if (er == ((void*)0))
  return -1;

 ap = wps_er_ap_get(er, ((void*)0), uuid, addr);
 if (ap == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: AP not found for learn "
      "request");
  return -1;
 }
 if (uuid == ((void*)0))
  uuid = ap->uuid;
 if (ap->wps) {
  wpa_printf(MSG_DEBUG, "WPS ER: Pending operation ongoing "
      "with the AP - cannot start learn");
  return -1;
 }

 if (wps_er_send_get_device_info(ap, wps_er_ap_learn_m1) < 0)
  return -1;

 er->skip_set_sel_reg = 1;
 wps_registrar_add_pin(er->wps->registrar, ((void*)0), uuid, pin, pin_len, 0);
 er->skip_set_sel_reg = 0;

 return 0;
}
