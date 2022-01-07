
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wpas_dbus_priv {int con; } ;
struct TYPE_5__ {int message; int name; } ;
typedef TYPE_1__ DBusError ;


 int DBUS_BUS_SYSTEM ;
 int MSG_ERROR ;
 int dbus_bus_get (int ,TYPE_1__*) ;
 int dbus_connection_add_filter (int ,int ,struct wpas_dbus_priv*,int *) ;
 int dbus_error_free (TYPE_1__*) ;
 int dbus_error_init (TYPE_1__*) ;
 int disconnect_filter ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static int wpas_dbus_init_common(struct wpas_dbus_priv *priv)
{
 DBusError error;
 int ret = 0;


 dbus_error_init(&error);
 priv->con = dbus_bus_get(DBUS_BUS_SYSTEM, &error);
 if (priv->con) {
  dbus_connection_add_filter(priv->con, disconnect_filter, priv,
        ((void*)0));
 } else {
  wpa_printf(MSG_ERROR,
      "dbus: Could not acquire the system bus: %s - %s",
      error.name, error.message);
  ret = -1;
 }
 dbus_error_free(&error);

 return ret;
}
