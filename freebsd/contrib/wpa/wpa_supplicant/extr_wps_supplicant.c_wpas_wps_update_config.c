
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config_methods; int num_sec_dev_types; int serial_number; int model_number; int model_name; int manufacturer; int device_name; int os_version; int sec_dev_type; int pri_dev_type; } ;
struct wps_context {int config_methods; TYPE_1__ dev; } ;
struct wpa_supplicant {TYPE_2__* conf; struct wps_context* wps; } ;
struct TYPE_4__ {int changed_parameters; int num_sec_device_types; int serial_number; int model_number; int model_name; int manufacturer; int device_name; int os_version; int sec_device_type; int device_type; int config_methods; } ;


 int CFG_CHANGED_CONFIG_METHODS ;
 int CFG_CHANGED_DEVICE_NAME ;
 int CFG_CHANGED_DEVICE_TYPE ;
 int CFG_CHANGED_OS_VERSION ;
 int CFG_CHANGED_SEC_DEVICE_TYPE ;
 int CFG_CHANGED_UUID ;
 int CFG_CHANGED_VENDOR_EXTENSION ;
 int CFG_CHANGED_WPS_STRING ;
 int MSG_ERROR ;
 int WPA_GET_BE32 (int ) ;
 int WPS_CONFIG_DISPLAY ;
 int WPS_CONFIG_LABEL ;
 int WPS_DEV_TYPE_LEN ;
 int os_memcpy (int ,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpas_wps_set_uuid (struct wpa_supplicant*,struct wps_context*) ;
 int wpas_wps_set_vendor_ext_m1 (struct wpa_supplicant*,struct wps_context*) ;
 int wps_config_methods_str2bin (int ) ;
 int wps_fix_config_methods (int) ;

void wpas_wps_update_config(struct wpa_supplicant *wpa_s)
{
 struct wps_context *wps = wpa_s->wps;

 if (wps == ((void*)0))
  return;

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_CONFIG_METHODS) {
  wps->config_methods = wps_config_methods_str2bin(
   wpa_s->conf->config_methods);
  if ((wps->config_methods &
       (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) ==
      (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) {
   wpa_printf(MSG_ERROR, "WPS: Both Label and Display "
       "config methods are not allowed at the "
       "same time");
   wps->config_methods &= ~WPS_CONFIG_LABEL;
  }
 }
 wps->config_methods = wps_fix_config_methods(wps->config_methods);
 wps->dev.config_methods = wps->config_methods;

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_DEVICE_TYPE)
  os_memcpy(wps->dev.pri_dev_type, wpa_s->conf->device_type,
     WPS_DEV_TYPE_LEN);

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_SEC_DEVICE_TYPE) {
  wps->dev.num_sec_dev_types = wpa_s->conf->num_sec_device_types;
  os_memcpy(wps->dev.sec_dev_type, wpa_s->conf->sec_device_type,
     wps->dev.num_sec_dev_types * WPS_DEV_TYPE_LEN);
 }

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_VENDOR_EXTENSION)
  wpas_wps_set_vendor_ext_m1(wpa_s, wps);

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_OS_VERSION)
  wps->dev.os_version = WPA_GET_BE32(wpa_s->conf->os_version);

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_UUID)
  wpas_wps_set_uuid(wpa_s, wps);

 if (wpa_s->conf->changed_parameters &
     (CFG_CHANGED_DEVICE_NAME | CFG_CHANGED_WPS_STRING)) {

  wps->dev.device_name = wpa_s->conf->device_name;
  wps->dev.manufacturer = wpa_s->conf->manufacturer;
  wps->dev.model_name = wpa_s->conf->model_name;
  wps->dev.model_number = wpa_s->conf->model_number;
  wps->dev.serial_number = wpa_s->conf->serial_number;
 }
}
