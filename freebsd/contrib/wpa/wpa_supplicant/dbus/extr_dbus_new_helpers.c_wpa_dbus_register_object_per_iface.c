
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wpas_dbus_priv {int * con; } ;
struct wpa_dbus_object_desc {int path; int * connection; } ;
struct TYPE_8__ {int message; int name; } ;
struct TYPE_7__ {int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ DBusObjectPathVTable ;
typedef TYPE_2__ DBusError ;
typedef int DBusConnection ;


 int DBUS_ERROR_OBJECT_PATH_IN_USE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int dbus_connection_try_register_object_path (int *,char const*,TYPE_1__*,struct wpa_dbus_object_desc*,TYPE_2__*) ;
 int dbus_error_free (TYPE_2__*) ;
 int dbus_error_init (TYPE_2__*) ;
 int free_dbus_object_desc_cb ;
 int message_handler ;
 scalar_t__ os_strcmp (int ,int ) ;
 int os_strdup (char const*) ;
 int wpa_printf (int ,char*,char const*,...) ;

int wpa_dbus_register_object_per_iface(struct wpas_dbus_priv *ctrl_iface,
           const char *path, const char *ifname,
           struct wpa_dbus_object_desc *obj_desc)
{
 DBusConnection *con;
 DBusError error;
 DBusObjectPathVTable vtable = {
  &free_dbus_object_desc_cb, &message_handler,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0)
 };


 if (ctrl_iface == ((void*)0))
  return 0;

 con = ctrl_iface->con;
 obj_desc->connection = con;
 obj_desc->path = os_strdup(path);

 dbus_error_init(&error);

 if (!dbus_connection_try_register_object_path(con, path, &vtable,
            obj_desc, &error)) {
  if (os_strcmp(error.name, DBUS_ERROR_OBJECT_PATH_IN_USE) == 0) {
   wpa_printf(MSG_DEBUG, "dbus: %s", error.message);
  } else {
   wpa_printf(MSG_ERROR,
       "dbus: Could not set up message handler for interface %s object %s (error: %s message: %s)",
       ifname, path, error.name, error.message);
  }
  dbus_error_free(&error);
  return -1;
 }

 dbus_error_free(&error);
 return 0;
}
