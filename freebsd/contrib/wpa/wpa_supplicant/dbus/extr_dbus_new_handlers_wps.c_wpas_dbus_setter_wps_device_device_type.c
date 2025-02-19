
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int changed_parameters; int device_type; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int CFG_CHANGED_DEVICE_TYPE ;
 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_VARIANT ;
 int FALSE ;
 int TRUE ;
 int WPS_DEV_TYPE_LEN ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_fixed_array (int *,int **,int*) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int os_memcpy (int ,int *,int) ;
 int wpa_supplicant_update_config (struct wpa_supplicant*) ;

dbus_bool_t wpas_dbus_setter_wps_device_device_type(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 u8 *dev_type;
 int dev_len;
 DBusMessageIter variant, array_iter;

 if (dbus_message_iter_get_arg_type(iter) != DBUS_TYPE_VARIANT)
  return FALSE;

 dbus_message_iter_recurse(iter, &variant);
 if (dbus_message_iter_get_arg_type(&variant) != DBUS_TYPE_ARRAY)
  return FALSE;

 dbus_message_iter_recurse(&variant, &array_iter);
 dbus_message_iter_get_fixed_array(&array_iter, &dev_type, &dev_len);

 if (dev_len != WPS_DEV_TYPE_LEN)
  return FALSE;

 os_memcpy(wpa_s->conf->device_type, dev_type, WPS_DEV_TYPE_LEN);
 wpa_s->conf->changed_parameters |= CFG_CHANGED_DEVICE_TYPE;
 wpa_supplicant_update_config(wpa_s);

 return TRUE;
}
