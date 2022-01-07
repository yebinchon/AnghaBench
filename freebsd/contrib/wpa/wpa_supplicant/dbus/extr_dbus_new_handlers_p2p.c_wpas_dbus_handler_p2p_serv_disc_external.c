
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int p2p_sd_over_ctrl_iface; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int dbus_message_iter_get_basic (int *,int*) ;
 int dbus_message_iter_init (int *,int *) ;

DBusMessage * wpas_dbus_handler_p2p_serv_disc_external(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter;
 int ext = 0;

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &ext);

 wpa_s->p2p_sd_over_ctrl_iface = ext;

 return ((void*)0);

}
