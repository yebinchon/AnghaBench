
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_dbus_priv {int con; } ;
struct wpa_supplicant {int dbus_new_path; TYPE_1__* global; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_BOOLEAN ;
 int DBUS_TYPE_INVALID ;
 int FALSE ;
 int MSG_ERROR ;
 int TRUE ;
 int WPAS_DBUS_NEW_IFACE_INTERFACE ;
 int dbus_connection_send (int ,int *,int *) ;
 scalar_t__ dbus_message_append_args (int *,int ,int *,int ) ;
 int * dbus_message_new_signal (int ,int ,char*) ;
 int dbus_message_unref (int *) ;
 int wpa_printf (int ,char*) ;

void wpas_dbus_signal_scan_done(struct wpa_supplicant *wpa_s, int success)
{
 struct wpas_dbus_priv *iface;
 DBusMessage *msg;
 dbus_bool_t succ;

 iface = wpa_s->global->dbus;


 if (iface == ((void*)0) || !wpa_s->dbus_new_path)
  return;

 msg = dbus_message_new_signal(wpa_s->dbus_new_path,
          WPAS_DBUS_NEW_IFACE_INTERFACE,
          "ScanDone");
 if (msg == ((void*)0))
  return;

 succ = success ? TRUE : FALSE;
 if (dbus_message_append_args(msg, DBUS_TYPE_BOOLEAN, &succ,
         DBUS_TYPE_INVALID))
  dbus_connection_send(iface->con, msg, ((void*)0));
 else
  wpa_printf(MSG_ERROR, "dbus: Failed to construct signal");
 dbus_message_unref(msg);
}
