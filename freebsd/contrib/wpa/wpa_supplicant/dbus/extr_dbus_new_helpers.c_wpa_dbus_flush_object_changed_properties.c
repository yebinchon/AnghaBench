
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_property_desc {int dbus_interface; scalar_t__ dbus_property; } ;
struct wpa_dbus_object_desc {int * prop_changed_flags; struct wpa_dbus_property_desc* properties; } ;
typedef int DBusConnection ;


 int dbus_connection_get_object_path_data (int *,char const*,void**) ;
 int eloop_cancel_timeout (int ,int *,struct wpa_dbus_object_desc*) ;
 int flush_object_timeout_handler ;
 int send_prop_changed_signal (int *,char const*,int ,struct wpa_dbus_object_desc*) ;

void wpa_dbus_flush_object_changed_properties(DBusConnection *con,
           const char *path)
{
 struct wpa_dbus_object_desc *obj_desc = ((void*)0);
 const struct wpa_dbus_property_desc *dsc;
 int i;

 dbus_connection_get_object_path_data(con, path, (void **) &obj_desc);
 if (!obj_desc)
  return;
 eloop_cancel_timeout(flush_object_timeout_handler, con, obj_desc);

 for (dsc = obj_desc->properties, i = 0; dsc && dsc->dbus_property;
      dsc++, i++) {
  if (obj_desc->prop_changed_flags == ((void*)0) ||
      !obj_desc->prop_changed_flags[i])
   continue;
  send_prop_changed_signal(con, path, dsc->dbus_interface,
      obj_desc);
 }
}
