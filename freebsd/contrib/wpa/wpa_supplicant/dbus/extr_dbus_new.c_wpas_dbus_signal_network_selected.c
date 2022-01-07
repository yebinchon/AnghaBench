
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int FALSE ;
 int wpas_dbus_signal_network (struct wpa_supplicant*,int,char*,int ) ;

void wpas_dbus_signal_network_selected(struct wpa_supplicant *wpa_s, int id)
{
 wpas_dbus_signal_network(wpa_s, id, "NetworkSelected", FALSE);
}
