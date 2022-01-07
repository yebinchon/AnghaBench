
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {char* dbus_new_path; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_OBJECT_PATH ;
 int FALSE ;
 int dbus_set_error_const (int *,int ,char*) ;
 char** os_calloc (unsigned int,int) ;
 int os_free (char const**) ;
 int wpas_dbus_simple_array_property_getter (int *,int ,char const**,unsigned int,int *) ;

dbus_bool_t wpas_dbus_getter_interfaces(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_global *global = user_data;
 struct wpa_supplicant *wpa_s;
 const char **paths;
 unsigned int i = 0, num = 0;
 dbus_bool_t success;

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (wpa_s->dbus_new_path)
   num++;
 }

 paths = os_calloc(num, sizeof(char *));
 if (!paths) {
  dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
  return FALSE;
 }

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (wpa_s->dbus_new_path)
   paths[i++] = wpa_s->dbus_new_path;
 }

 success = wpas_dbus_simple_array_property_getter(iter,
        DBUS_TYPE_OBJECT_PATH,
        paths, num, error);

 os_free(paths);
 return success;
}
