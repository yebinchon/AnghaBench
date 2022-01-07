
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ dbus_new_path; TYPE_1__* global; } ;
struct TYPE_2__ {int dbus; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_ERROR_FAILED ;
 int DBUS_ERROR_INVALID_ARGS ;
 int WPAS_DBUS_NEW_IFACE_INTERFACE ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_next (int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int os_free (char*) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_dbus_mark_property_changed (int ,scalar_t__,int ,char*) ;
 scalar_t__ wpas_set_pkcs11_engine_and_module_path (struct wpa_supplicant*,char*,char*) ;

DBusMessage * wpas_dbus_handler_set_pkcs11_engine_and_module_path(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter;
 char *value = ((void*)0);
 char *pkcs11_engine_path = ((void*)0);
 char *pkcs11_module_path = ((void*)0);

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &value);
 if (value == ((void*)0)) {
  return dbus_message_new_error(
   message, DBUS_ERROR_INVALID_ARGS,
   "Invalid pkcs11_engine_path argument");
 }

 if (os_strlen(value))
  pkcs11_engine_path = value;

 dbus_message_iter_next(&iter);
 dbus_message_iter_get_basic(&iter, &value);
 if (value == ((void*)0)) {
  os_free(pkcs11_engine_path);
  return dbus_message_new_error(
   message, DBUS_ERROR_INVALID_ARGS,
   "Invalid pkcs11_module_path argument");
 }

 if (os_strlen(value))
  pkcs11_module_path = value;

 if (wpas_set_pkcs11_engine_and_module_path(wpa_s, pkcs11_engine_path,
         pkcs11_module_path))
  return dbus_message_new_error(
   message, DBUS_ERROR_FAILED,
   "Reinit of the EAPOL state machine with the new PKCS #11 engine and module path failed.");

 if (wpa_s->dbus_new_path) {
  wpa_dbus_mark_property_changed(
   wpa_s->global->dbus, wpa_s->dbus_new_path,
   WPAS_DBUS_NEW_IFACE_INTERFACE, "PKCS11EnginePath");
  wpa_dbus_mark_property_changed(
   wpa_s->global->dbus, wpa_s->dbus_new_path,
   WPAS_DBUS_NEW_IFACE_INTERFACE, "PKCS11ModulePath");
 }

 return ((void*)0);
}
