
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa_state; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int dbus_set_error_const (int *,int ,char*) ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 char tolower (char) ;
 char* wpa_supplicant_state_txt (int ) ;
 int wpas_dbus_simple_property_getter (int *,int ,char**,int *) ;

dbus_bool_t wpas_dbus_getter_state(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 const char *str_state;
 char *state_ls, *tmp;
 dbus_bool_t success = FALSE;

 str_state = wpa_supplicant_state_txt(wpa_s->wpa_state);



 state_ls = tmp = os_strdup(str_state);
 if (!tmp) {
  dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
  return FALSE;
 }
 while (*tmp) {
  *tmp = tolower(*tmp);
  tmp++;
 }

 success = wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING,
         &state_ls, error);

 os_free(state_ls);

 return success;
}
