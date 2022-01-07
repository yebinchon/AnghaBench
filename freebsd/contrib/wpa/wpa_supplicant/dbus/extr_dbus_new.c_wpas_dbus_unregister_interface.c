
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_dbus_priv {int dummy; } ;
struct wpa_supplicant {int * dbus_new_path; int * preq_notify_peer; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 scalar_t__ wpa_dbus_unregister_object_per_iface (struct wpas_dbus_priv*,int *) ;
 int wpa_printf (int ,char*,int *) ;
 int wpas_dbus_signal_interface_removed (struct wpa_supplicant*) ;
 int wpas_dbus_unsubscribe_noc (struct wpas_dbus_priv*) ;

int wpas_dbus_unregister_interface(struct wpa_supplicant *wpa_s)
{
 struct wpas_dbus_priv *ctrl_iface;


 if (wpa_s == ((void*)0) || wpa_s->global == ((void*)0))
  return 0;
 ctrl_iface = wpa_s->global->dbus;
 if (ctrl_iface == ((void*)0) || wpa_s->dbus_new_path == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "dbus: Unregister interface object '%s'",
     wpa_s->dbus_new_path);
 if (wpa_dbus_unregister_object_per_iface(ctrl_iface,
       wpa_s->dbus_new_path))
  return -1;

 wpas_dbus_signal_interface_removed(wpa_s);

 os_free(wpa_s->dbus_new_path);
 wpa_s->dbus_new_path = ((void*)0);

 return 0;
}
