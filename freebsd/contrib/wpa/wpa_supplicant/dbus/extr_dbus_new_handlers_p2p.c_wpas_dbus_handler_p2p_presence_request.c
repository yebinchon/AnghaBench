
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; unsigned int uint32_value; int * key; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_INT32 ;
 int dbus_message_iter_init (int *,int *) ;
 scalar_t__ os_strcmp (int *,char*) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_p2p_presence_req (struct wpa_supplicant*,unsigned int,unsigned int,unsigned int,unsigned int) ;

DBusMessage * wpas_dbus_handler_p2p_presence_request(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 unsigned int dur1 = 0, int1 = 0, dur2 = 0, int2 = 0;
 struct wpa_dbus_dict_entry entry;
 DBusMessageIter iter;
 DBusMessageIter iter_dict;

 dbus_message_iter_init(message, &iter);
 entry.key = ((void*)0);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;

  if (os_strcmp(entry.key, "duration1") == 0 &&
      entry.type == DBUS_TYPE_INT32)
   dur1 = entry.uint32_value;
  else if (os_strcmp(entry.key, "interval1") == 0 &&
    entry.type == DBUS_TYPE_INT32)
   int1 = entry.uint32_value;
  else if (os_strcmp(entry.key, "duration2") == 0 &&
    entry.type == DBUS_TYPE_INT32)
   dur2 = entry.uint32_value;
  else if (os_strcmp(entry.key, "interval2") == 0 &&
    entry.type == DBUS_TYPE_INT32)
   int2 = entry.uint32_value;
  else
   goto error_clear;

  wpa_dbus_dict_entry_clear(&entry);
 }

 if (wpas_p2p_presence_req(wpa_s, dur1, int1, dur2, int2) < 0)
  return wpas_dbus_error_unknown_error(message,
    "Failed to invoke presence request.");

 return ((void*)0);

error_clear:
 wpa_dbus_dict_entry_clear(&entry);
error:
 return wpas_dbus_error_invalid_args(message, entry.key);
}
