
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct wpa_config_blob {struct wpa_config_blob* next; int len; int data; int name; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {struct wpa_config_blob* blobs; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_ARRAY ;
 int DBUS_TYPE_BYTE ;
 char* DBUS_TYPE_BYTE_AS_STRING ;
 int DBUS_TYPE_DICT_ENTRY ;
 int DBUS_TYPE_STRING ;
 int DBUS_TYPE_VARIANT ;
 int FALSE ;
 int TRUE ;
 int dbus_message_iter_append_basic (int *,int ,int *) ;
 int dbus_message_iter_append_fixed_array (int *,int ,int *,int ) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 int dbus_set_error_const (int *,int ,char*) ;

dbus_bool_t wpas_dbus_getter_blobs(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 DBusMessageIter variant_iter, dict_iter, entry_iter, array_iter;
 struct wpa_config_blob *blob;

 if (!dbus_message_iter_open_container(iter, DBUS_TYPE_VARIANT,
           "a{say}", &variant_iter) ||
     !dbus_message_iter_open_container(&variant_iter, DBUS_TYPE_ARRAY,
           "{say}", &dict_iter)) {
  dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
  return FALSE;
 }

 blob = wpa_s->conf->blobs;
 while (blob) {
  if (!dbus_message_iter_open_container(&dict_iter,
            DBUS_TYPE_DICT_ENTRY,
            ((void*)0), &entry_iter) ||
      !dbus_message_iter_append_basic(&entry_iter,
          DBUS_TYPE_STRING,
          &(blob->name)) ||
      !dbus_message_iter_open_container(&entry_iter,
            DBUS_TYPE_ARRAY,
            DBUS_TYPE_BYTE_AS_STRING,
            &array_iter) ||
      !dbus_message_iter_append_fixed_array(&array_iter,
         DBUS_TYPE_BYTE,
         &(blob->data),
         blob->len) ||
      !dbus_message_iter_close_container(&entry_iter,
             &array_iter) ||
      !dbus_message_iter_close_container(&dict_iter,
             &entry_iter)) {
   dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY,
          "no memory");
   return FALSE;
  }

  blob = blob->next;
 }

 if (!dbus_message_iter_close_container(&variant_iter, &dict_iter) ||
     !dbus_message_iter_close_container(iter, &variant_iter)) {
  dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
  return FALSE;
 }

 return TRUE;
}
