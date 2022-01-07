
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int global; } ;
typedef int DBusMessage ;
typedef int DBusHandlerResult ;
typedef int DBusConnection ;


 int DBUS_HANDLER_RESULT_HANDLED ;
 int DBUS_HANDLER_RESULT_NOT_YET_HANDLED ;
 int DBUS_INTERFACE_LOCAL ;
 int FALSE ;
 int MSG_DEBUG ;
 int dbus_connection_set_exit_on_disconnect (int *,int ) ;
 scalar_t__ dbus_message_is_signal (int *,int ,char*) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_terminate_proc (int ) ;

__attribute__((used)) static DBusHandlerResult disconnect_filter(DBusConnection *conn,
        DBusMessage *message, void *data)
{
 struct wpas_dbus_priv *priv = data;

 if (dbus_message_is_signal(message, DBUS_INTERFACE_LOCAL,
       "Disconnected")) {
  wpa_printf(MSG_DEBUG, "dbus: bus disconnected, terminating");
  dbus_connection_set_exit_on_disconnect(conn, FALSE);
  wpa_supplicant_terminate_proc(priv->global);
  return DBUS_HANDLER_RESULT_HANDLED;
 } else
  return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;
}
