
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int con; scalar_t__ should_dispatch; } ;
typedef scalar_t__ eloop_event_type ;
typedef int DBusWatch ;


 int DBUS_WATCH_ERROR ;
 int DBUS_WATCH_READABLE ;
 int DBUS_WATCH_WRITABLE ;
 scalar_t__ EVENT_TYPE_EXCEPTION ;
 scalar_t__ EVENT_TYPE_READ ;
 scalar_t__ EVENT_TYPE_WRITE ;
 int dbus_connection_ref (int ) ;
 int dbus_connection_unref (int ) ;
 int dbus_watch_handle (int *,int ) ;
 int dispatch_data (int ) ;

__attribute__((used)) static void process_watch(struct wpas_dbus_priv *priv,
     DBusWatch *watch, eloop_event_type type)
{
 dbus_connection_ref(priv->con);

 priv->should_dispatch = 0;

 if (type == EVENT_TYPE_READ)
  dbus_watch_handle(watch, DBUS_WATCH_READABLE);
 else if (type == EVENT_TYPE_WRITE)
  dbus_watch_handle(watch, DBUS_WATCH_WRITABLE);
 else if (type == EVENT_TYPE_EXCEPTION)
  dbus_watch_handle(watch, DBUS_WATCH_ERROR);

 if (priv->should_dispatch) {
  dispatch_data(priv->con);
  priv->should_dispatch = 0;
 }

 dbus_connection_unref(priv->con);
}
