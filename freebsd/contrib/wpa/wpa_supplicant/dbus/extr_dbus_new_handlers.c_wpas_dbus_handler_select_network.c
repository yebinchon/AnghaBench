
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; int dbus_new_path; } ;
struct wpa_ssid {int dummy; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_OBJECT_PATH ;
 int WPAS_DBUS_NEW_NETWORKS_PART ;
 int dbus_message_get_args (int *,int *,int ,char const**,int ) ;
 scalar_t__ errno ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char*,int ) ;
 int strtoul (char*,int *,int) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_supplicant_select_network (struct wpa_supplicant*,struct wpa_ssid*) ;
 int * wpas_dbus_error_invalid_args (int *,char const*) ;
 int * wpas_dbus_error_network_unknown (int *) ;
 char* wpas_dbus_new_decompose_object_path (char const*,int ,char**) ;

DBusMessage * wpas_dbus_handler_select_network(DBusMessage *message,
            struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);
 const char *op;
 char *iface, *net_id;
 int id;
 struct wpa_ssid *ssid;

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_OBJECT_PATH, &op,
         DBUS_TYPE_INVALID);



 iface = wpas_dbus_new_decompose_object_path(op,
          WPAS_DBUS_NEW_NETWORKS_PART,
          &net_id);
 if (iface == ((void*)0) || net_id == ((void*)0) || !wpa_s->dbus_new_path ||
     os_strcmp(iface, wpa_s->dbus_new_path) != 0) {
  reply = wpas_dbus_error_invalid_args(message, op);
  goto out;
 }

 errno = 0;
 id = strtoul(net_id, ((void*)0), 10);
 if (errno != 0) {
  reply = wpas_dbus_error_invalid_args(message, op);
  goto out;
 }

 ssid = wpa_config_get_network(wpa_s->conf, id);
 if (ssid == ((void*)0)) {
  reply = wpas_dbus_error_network_unknown(message);
  goto out;
 }


 wpa_supplicant_select_network(wpa_s, ssid);

out:
 os_free(iface);
 return reply;
}
