
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusConnection ;


 int WPAS_DBUS_OBJECT_PATH_MAX ;
 int dbus_connection_list_registered (int *,char const*,char***) ;
 int dbus_free_string_array (char**) ;
 int os_snprintf (char*,int,char*,char const*,char*) ;
 int wpa_dbus_flush_object_changed_properties (int *,char const*) ;

__attribute__((used)) static void recursive_flush_changed_properties(DBusConnection *con,
            const char *path)
{
 char **objects = ((void*)0);
 char subobj_path[WPAS_DBUS_OBJECT_PATH_MAX];
 int i;

 wpa_dbus_flush_object_changed_properties(con, path);

 if (!dbus_connection_list_registered(con, path, &objects))
  goto out;

 for (i = 0; objects[i]; i++) {
  os_snprintf(subobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
       "%s/%s", path, objects[i]);
  recursive_flush_changed_properties(con, subobj_path);
 }

out:
 dbus_free_string_array(objects);
}
