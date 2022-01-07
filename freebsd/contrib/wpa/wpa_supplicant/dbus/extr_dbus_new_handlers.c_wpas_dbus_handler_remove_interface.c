
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_global {int dummy; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_OBJECT_PATH ;
 int dbus_message_get_args (int *,int *,int ,char**,int ) ;
 struct wpa_supplicant* get_iface_by_dbus_path (struct wpa_global*,char*) ;
 scalar_t__ wpa_supplicant_remove_iface (struct wpa_global*,struct wpa_supplicant*,int ) ;
 int * wpas_dbus_error_iface_unknown (int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;

DBusMessage * wpas_dbus_handler_remove_interface(DBusMessage *message,
       struct wpa_global *global)
{
 struct wpa_supplicant *wpa_s;
 char *path;
 DBusMessage *reply = ((void*)0);

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_OBJECT_PATH, &path,
         DBUS_TYPE_INVALID);

 wpa_s = get_iface_by_dbus_path(global, path);
 if (wpa_s == ((void*)0))
  reply = wpas_dbus_error_iface_unknown(message);
 else if (wpa_supplicant_remove_iface(global, wpa_s, 0)) {
  reply = wpas_dbus_error_unknown_error(
   message,
   "wpa_supplicant couldn't remove this interface.");
 }

 return reply;
}
