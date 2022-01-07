
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wps_data {size_t dev_password_len; int dev_pw_id; int * dev_password; int peer_dev; int uuid_e; TYPE_2__* wps; TYPE_1__* nfc_pw_token; scalar_t__ pbc; } ;
struct TYPE_4__ {int ap_nfc_dev_pw_id; int registrar; scalar_t__ ap_nfc_dev_pw; } ;
struct TYPE_3__ {scalar_t__ pw_id; size_t dev_pw_len; int * dev_pw; } ;


 int DEV_PW_DEFAULT ;
 scalar_t__ DEV_PW_NFC_CONNECTION_HANDOVER ;
 int MSG_DEBUG ;
 int bin_clear_free (int *,size_t) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_head (scalar_t__) ;
 size_t wpabuf_len (scalar_t__) ;
 int wps_cb_pin_needed (int ,int ,int *) ;
 int * wps_registrar_get_pin (int ,int ,size_t*) ;

__attribute__((used)) static int wps_get_dev_password(struct wps_data *wps)
{
 const u8 *pin;
 size_t pin_len = 0;

 bin_clear_free(wps->dev_password, wps->dev_password_len);
 wps->dev_password = ((void*)0);

 if (wps->pbc) {
  wpa_printf(MSG_DEBUG, "WPS: Use default PIN for PBC");
  pin = (const u8 *) "00000000";
  pin_len = 8;
 } else {
  pin = wps_registrar_get_pin(wps->wps->registrar, wps->uuid_e,
         &pin_len);
  if (pin && wps->dev_pw_id >= 0x10) {
   wpa_printf(MSG_DEBUG, "WPS: No match for OOB Device "
       "Password ID, but PIN found");



   wps->dev_pw_id = DEV_PW_DEFAULT;
  }
 }
 if (pin == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Device Password available for "
      "the Enrollee (context %p registrar %p)",
      wps->wps, wps->wps->registrar);
  wps_cb_pin_needed(wps->wps->registrar, wps->uuid_e,
      &wps->peer_dev);
  return -1;
 }

 wps->dev_password = os_memdup(pin, pin_len);
 if (wps->dev_password == ((void*)0))
  return -1;
 wps->dev_password_len = pin_len;

 return 0;
}
