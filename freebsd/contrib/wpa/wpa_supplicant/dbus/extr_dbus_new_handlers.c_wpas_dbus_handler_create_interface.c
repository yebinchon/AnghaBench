
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {char* dbus_new_path; } ;
struct wpa_interface {char* driver; char* ifname; char* confname; char* bridge_ifname; } ;
struct wpa_global {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int str_value; int key; } ;
typedef int iface ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_OBJECT_PATH ;
 scalar_t__ DBUS_TYPE_STRING ;
 int WPAS_DBUS_ERROR_IFACE_EXISTS ;
 int dbus_message_append_args (int *,int ,char const**,int ) ;
 int dbus_message_iter_init (int *,int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * dbus_message_new_method_return (int *) ;
 int os_free (char*) ;
 int os_memset (struct wpa_interface*,int ,int) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 struct wpa_supplicant* wpa_supplicant_add_iface (struct wpa_global*,struct wpa_interface*,int *) ;
 int * wpa_supplicant_get_iface (struct wpa_global*,char*) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_no_memory (int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;

DBusMessage * wpas_dbus_handler_create_interface(DBusMessage *message,
       struct wpa_global *global)
{
 DBusMessageIter iter_dict;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 struct wpa_dbus_dict_entry entry;
 char *driver = ((void*)0);
 char *ifname = ((void*)0);
 char *confname = ((void*)0);
 char *bridge_ifname = ((void*)0);

 dbus_message_iter_init(message, &iter);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;
 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;
  if (os_strcmp(entry.key, "Driver") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(driver);
   driver = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
   if (driver == ((void*)0))
    goto oom;
  } else if (os_strcmp(entry.key, "Ifname") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(ifname);
   ifname = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
   if (ifname == ((void*)0))
    goto oom;
  } else if (os_strcmp(entry.key, "ConfigFile") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(confname);
   confname = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
   if (confname == ((void*)0))
    goto oom;
  } else if (os_strcmp(entry.key, "BridgeIfname") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(bridge_ifname);
   bridge_ifname = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
   if (bridge_ifname == ((void*)0))
    goto oom;
  } else {
   wpa_dbus_dict_entry_clear(&entry);
   goto error;
  }
 }

 if (ifname == ((void*)0))
  goto error;





 if (wpa_supplicant_get_iface(global, ifname) != ((void*)0)) {
  reply = dbus_message_new_error(
   message, WPAS_DBUS_ERROR_IFACE_EXISTS,
   "wpa_supplicant already controls this interface.");
 } else {
  struct wpa_supplicant *wpa_s;
  struct wpa_interface iface;

  os_memset(&iface, 0, sizeof(iface));
  iface.driver = driver;
  iface.ifname = ifname;
  iface.confname = confname;
  iface.bridge_ifname = bridge_ifname;

  wpa_s = wpa_supplicant_add_iface(global, &iface, ((void*)0));
  if (wpa_s && wpa_s->dbus_new_path) {
   const char *path = wpa_s->dbus_new_path;

   reply = dbus_message_new_method_return(message);
   dbus_message_append_args(reply, DBUS_TYPE_OBJECT_PATH,
       &path, DBUS_TYPE_INVALID);
  } else {
   reply = wpas_dbus_error_unknown_error(
    message,
    "wpa_supplicant couldn't grab this interface.");
  }
 }

out:
 os_free(driver);
 os_free(ifname);
 os_free(confname);
 os_free(bridge_ifname);
 return reply;

error:
 reply = wpas_dbus_error_invalid_args(message, ((void*)0));
 goto out;
oom:
 reply = wpas_dbus_error_no_memory(message);
 goto out;
}
