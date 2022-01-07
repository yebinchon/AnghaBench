
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct wps_data {scalar_t__ dev_pw_id; scalar_t__ alt_dev_pw_id; scalar_t__ alt_dev_password_len; int * alt_dev_password; scalar_t__ dev_password_len; int * dev_password; } ;


 scalar_t__ DEV_PW_DEFAULT ;
 scalar_t__ DEV_PW_PUSHBUTTON ;
 scalar_t__ DEV_PW_REGISTRAR_SPECIFIED ;
 int MSG_DEBUG ;
 scalar_t__ WPA_GET_BE16 (int const*) ;
 int bin_clear_free (int *,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_dev_pw_id(struct wps_data *wps, const u8 *dev_pw_id)
{
 u16 id;

 if (dev_pw_id == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Device Password ID");
  return -1;
 }

 id = WPA_GET_BE16(dev_pw_id);
 if (wps->dev_pw_id == id) {
  wpa_printf(MSG_DEBUG, "WPS: Device Password ID %u", id);
  return 0;
 }
 wpa_printf(MSG_DEBUG, "WPS: Registrar trying to change Device Password "
     "ID from %u to %u", wps->dev_pw_id, id);

 if (wps->dev_pw_id == DEV_PW_PUSHBUTTON && id == DEV_PW_DEFAULT) {
  wpa_printf(MSG_DEBUG,
      "WPS: Workaround - ignore PBC-to-PIN change");
  return 0;
 }

 if (wps->alt_dev_password && wps->alt_dev_pw_id == id) {
  wpa_printf(MSG_DEBUG, "WPS: Found a matching Device Password");
  bin_clear_free(wps->dev_password, wps->dev_password_len);
  wps->dev_pw_id = wps->alt_dev_pw_id;
  wps->dev_password = wps->alt_dev_password;
  wps->dev_password_len = wps->alt_dev_password_len;
  wps->alt_dev_password = ((void*)0);
  wps->alt_dev_password_len = 0;
  return 0;
 }

 return -1;
}
