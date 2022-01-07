
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_dbus_priv {int con; } ;
struct wpa_supplicant {int dbus_new_path; TYPE_1__* global; } ;
typedef scalar_t__ dbus_bool_t ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_TYPE_OBJECT_PATH ;
 int MSG_ERROR ;
 int WPAS_DBUS_NEW_IFACE_INTERFACE ;
 int WPAS_DBUS_NEW_INTERFACE ;
 int WPAS_DBUS_NEW_PATH ;
 int dbus_connection_send (int ,int *,int *) ;
 int dbus_message_iter_append_basic (int *,int ,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int * dbus_message_new_signal (int ,int ,char const*) ;
 int dbus_message_unref (int *) ;
 int wpa_dbus_get_object_properties (struct wpas_dbus_priv*,int ,int ,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_dbus_signal_interface(struct wpa_supplicant *wpa_s,
           const char *sig_name,
           dbus_bool_t properties)
{
 struct wpas_dbus_priv *iface;
 DBusMessage *msg;
 DBusMessageIter iter;

 iface = wpa_s->global->dbus;


 if (iface == ((void*)0) || !wpa_s->dbus_new_path)
  return;

 msg = dbus_message_new_signal(WPAS_DBUS_NEW_PATH,
          WPAS_DBUS_NEW_INTERFACE, sig_name);
 if (msg == ((void*)0))
  return;

 dbus_message_iter_init_append(msg, &iter);
 if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_OBJECT_PATH,
         &wpa_s->dbus_new_path) ||
     (properties &&
      !wpa_dbus_get_object_properties(
       iface, wpa_s->dbus_new_path,
       WPAS_DBUS_NEW_IFACE_INTERFACE, &iter)))
  wpa_printf(MSG_ERROR, "dbus: Failed to construct signal");
 else
  dbus_connection_send(iface->con, msg, ((void*)0));
 dbus_message_unref(msg);
}
