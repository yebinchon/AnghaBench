
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; int eapol; struct wpa_ssid* current_ssid; int wpa; } ;
struct wpa_ssid {scalar_t__ passphrase; scalar_t__ ssid_len; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ array_type; int array_len; int key; int int32_value; int uint32_value; int str_value; scalar_t__ bytearray_value; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_INVALID_ARGS ;
 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;
 scalar_t__ DBUS_TYPE_INT32 ;
 scalar_t__ DBUS_TYPE_STRING ;
 scalar_t__ DBUS_TYPE_UINT32 ;
 int FALSE ;
 int TRUE ;
 int dbus_set_error_const (int *,int ,char*) ;
 int eapol_sm_invalidate_cached_session (int ) ;
 int os_free (char*) ;
 int os_snprintf (char*,size_t,char*,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 size_t os_strlen (int ) ;
 char* os_zalloc (size_t) ;
 scalar_t__ should_quote_opt (int ) ;
 scalar_t__ wpa_config_set (struct wpa_ssid*,int ,char*,int ) ;
 int wpa_config_update_prio_list (int ) ;
 int wpa_config_update_psk (struct wpa_ssid*) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 int wpa_sm_pmksa_cache_flush (int ,struct wpa_ssid*) ;
 int wpa_snprintf_hex (char*,size_t,int *,int) ;

dbus_bool_t set_network_properties(struct wpa_supplicant *wpa_s,
       struct wpa_ssid *ssid,
       DBusMessageIter *iter,
       DBusError *error)
{
 struct wpa_dbus_dict_entry entry = { .type = DBUS_TYPE_STRING };
 DBusMessageIter iter_dict;
 char *value = ((void*)0);

 if (!wpa_dbus_dict_open_read(iter, &iter_dict, error))
  return FALSE;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  size_t size = 50;
  int ret;

  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;

  value = ((void*)0);
  if (entry.type == DBUS_TYPE_ARRAY &&
      entry.array_type == DBUS_TYPE_BYTE) {
   if (entry.array_len <= 0)
    goto error;

   size = entry.array_len * 2 + 1;
   value = os_zalloc(size);
   if (value == ((void*)0))
    goto error;

   ret = wpa_snprintf_hex(value, size,
            (u8 *) entry.bytearray_value,
            entry.array_len);
   if (ret <= 0)
    goto error;
  } else if (entry.type == DBUS_TYPE_STRING) {
   if (should_quote_opt(entry.key)) {
    size = os_strlen(entry.str_value);
    if (size == 0)
     goto error;

    size += 3;
    value = os_zalloc(size);
    if (value == ((void*)0))
     goto error;

    ret = os_snprintf(value, size, "\"%s\"",
        entry.str_value);
    if (os_snprintf_error(size, ret))
     goto error;
   } else {
    value = os_strdup(entry.str_value);
    if (value == ((void*)0))
     goto error;
   }
  } else if (entry.type == DBUS_TYPE_UINT32) {
   value = os_zalloc(size);
   if (value == ((void*)0))
    goto error;

   ret = os_snprintf(value, size, "%u",
       entry.uint32_value);
   if (os_snprintf_error(size, ret))
    goto error;
  } else if (entry.type == DBUS_TYPE_INT32) {
   value = os_zalloc(size);
   if (value == ((void*)0))
    goto error;

   ret = os_snprintf(value, size, "%d",
       entry.int32_value);
   if (os_snprintf_error(size, ret))
    goto error;
  } else
   goto error;

  if (wpa_config_set(ssid, entry.key, value, 0) < 0)
   goto error;

  if (os_strcmp(entry.key, "bssid") != 0 &&
      os_strcmp(entry.key, "priority") != 0)
   wpa_sm_pmksa_cache_flush(wpa_s->wpa, ssid);

  if (wpa_s->current_ssid == ssid ||
      wpa_s->current_ssid == ((void*)0)) {




   eapol_sm_invalidate_cached_session(wpa_s->eapol);
  }

  if ((os_strcmp(entry.key, "psk") == 0 &&
       value[0] == '"' && ssid->ssid_len) ||
      (os_strcmp(entry.key, "ssid") == 0 && ssid->passphrase))
   wpa_config_update_psk(ssid);
  else if (os_strcmp(entry.key, "priority") == 0)
   wpa_config_update_prio_list(wpa_s->conf);

  os_free(value);
  value = ((void*)0);
  wpa_dbus_dict_entry_clear(&entry);
 }

 return TRUE;

error:
 os_free(value);
 wpa_dbus_dict_entry_clear(&entry);
 dbus_set_error_const(error, DBUS_ERROR_INVALID_ARGS,
        "invalid message format");
 return FALSE;
}
