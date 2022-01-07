
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_dbus_priv {int con; } ;
struct wpa_supplicant {int dbus_new_path; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int MSG_ERROR ;
 int WPAS_DBUS_NEW_IFACE_INTERFACE ;
 int dbus_connection_send (int ,int *,int *) ;
 scalar_t__ dbus_message_append_args (int *,int ,char const**,int ) ;
 int * dbus_message_new_signal (int ,int ,char const*) ;
 int dbus_message_unref (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_dbus_signal_blob(struct wpa_supplicant *wpa_s,
      const char *name, const char *sig_name)
{
 struct wpas_dbus_priv *iface;
 DBusMessage *msg;

 iface = wpa_s->global->dbus;


 if (iface == ((void*)0) || !wpa_s->dbus_new_path)
  return;

 msg = dbus_message_new_signal(wpa_s->dbus_new_path,
          WPAS_DBUS_NEW_IFACE_INTERFACE,
          sig_name);
 if (msg == ((void*)0))
  return;

 if (dbus_message_append_args(msg, DBUS_TYPE_STRING, &name,
         DBUS_TYPE_INVALID))
  dbus_connection_send(iface->con, msg, ((void*)0));
 else
  wpa_printf(MSG_ERROR, "dbus: Failed to construct signal");
 dbus_message_unref(msg);
}
