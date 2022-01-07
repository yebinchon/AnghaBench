
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * dbus_groupobj_path; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_OBJECT_PATH ;
 int WPAS_DBUS_OBJECT_PATH_MAX ;
 int os_snprintf (char*,int,char*,...) ;
 int wpas_dbus_simple_property_getter (int *,int ,char**,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_group(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 char path_buf[WPAS_DBUS_OBJECT_PATH_MAX];
 char *dbus_groupobj_path = path_buf;

 if (wpa_s->dbus_groupobj_path == ((void*)0))
  os_snprintf(dbus_groupobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
       "/");
 else
  os_snprintf(dbus_groupobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
       "%s", wpa_s->dbus_groupobj_path);

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_OBJECT_PATH,
      &dbus_groupobj_path, error);
}
