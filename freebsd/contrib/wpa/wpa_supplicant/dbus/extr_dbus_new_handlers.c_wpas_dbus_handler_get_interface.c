
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {char* dbus_new_path; } ;
struct wpa_global {int dummy; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_OBJECT_PATH ;
 int DBUS_TYPE_STRING ;
 int dbus_message_append_args (int *,int ,char const**,int ) ;
 int dbus_message_get_args (int *,int *,int ,char const**,int ) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 struct wpa_supplicant* wpa_supplicant_get_iface (struct wpa_global*,char const*) ;
 int * wpas_dbus_error_iface_unknown (int *) ;
 int * wpas_dbus_error_no_memory (int *) ;

DBusMessage * wpas_dbus_handler_get_interface(DBusMessage *message,
           struct wpa_global *global)
{
 DBusMessage *reply = ((void*)0);
 const char *ifname;
 const char *path;
 struct wpa_supplicant *wpa_s;

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_STRING, &ifname,
         DBUS_TYPE_INVALID);

 wpa_s = wpa_supplicant_get_iface(global, ifname);
 if (wpa_s == ((void*)0) || wpa_s->dbus_new_path == ((void*)0))
  return wpas_dbus_error_iface_unknown(message);

 path = wpa_s->dbus_new_path;
 reply = dbus_message_new_method_return(message);
 if (reply == ((void*)0))
  return wpas_dbus_error_no_memory(message);
 if (!dbus_message_append_args(reply, DBUS_TYPE_OBJECT_PATH, &path,
          DBUS_TYPE_INVALID)) {
  dbus_message_unref(reply);
  return wpas_dbus_error_no_memory(message);
 }

 return reply;
}
