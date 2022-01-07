
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int dummy; } ;
typedef int DBusConnection ;


 int do_send_deprecated_prop_changed_signal (int *,char const*,char const*,struct wpa_dbus_object_desc const*) ;
 int do_send_prop_changed_signal (int *,char const*,char const*,struct wpa_dbus_object_desc const*) ;

__attribute__((used)) static void send_prop_changed_signal(
 DBusConnection *con, const char *path, const char *interface,
 const struct wpa_dbus_object_desc *obj_dsc)
{






 do_send_prop_changed_signal(con, path, interface, obj_dsc);






 do_send_deprecated_prop_changed_signal(con, path, interface, obj_dsc);


}
