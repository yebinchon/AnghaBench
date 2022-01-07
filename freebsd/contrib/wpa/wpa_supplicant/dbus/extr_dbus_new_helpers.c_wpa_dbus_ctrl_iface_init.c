
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wpas_dbus_priv {int con; } ;
struct wpa_dbus_object_desc {int path; int connection; } ;
struct TYPE_8__ {int message; int name; } ;
struct TYPE_7__ {int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ DBusObjectPathVTable ;
typedef TYPE_2__ DBusError ;






 int MSG_DEBUG ;
 int MSG_ERROR ;
 int dbus_bus_request_name (int ,char*,int ,TYPE_2__*) ;
 int dbus_connection_register_object_path (int ,char*,TYPE_1__*,struct wpa_dbus_object_desc*) ;
 int dbus_error_free (TYPE_2__*) ;
 int dbus_error_init (TYPE_2__*) ;
 int free_dbus_object_desc_cb ;
 int message_handler ;
 int os_strdup (char*) ;
 int wpa_printf (int ,char*,...) ;

int wpa_dbus_ctrl_iface_init(struct wpas_dbus_priv *iface,
        char *dbus_path, char *dbus_service,
        struct wpa_dbus_object_desc *obj_desc)
{
 DBusError error;
 int ret = -1;
 DBusObjectPathVTable wpa_vtable = {
  &free_dbus_object_desc_cb, &message_handler,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0)
 };

 obj_desc->connection = iface->con;
 obj_desc->path = os_strdup(dbus_path);


 if (!dbus_connection_register_object_path(iface->con, dbus_path,
        &wpa_vtable, obj_desc)) {
  wpa_printf(MSG_ERROR, "dbus: Could not set up message handler");
  return -1;
 }


 dbus_error_init(&error);
 switch (dbus_bus_request_name(iface->con, dbus_service, 0, &error)) {
 case 128:
  ret = 0;
  break;
 case 130:
 case 129:
 case 131:
  wpa_printf(MSG_ERROR,
      "dbus: Could not request service name: already registered");
  break;
 default:
  wpa_printf(MSG_ERROR,
      "dbus: Could not request service name: %s %s",
      error.name, error.message);
  break;
 }
 dbus_error_free(&error);

 if (ret != 0)
  return -1;

 wpa_printf(MSG_DEBUG, "Providing DBus service '%s'.", dbus_service);

 return 0;
}
