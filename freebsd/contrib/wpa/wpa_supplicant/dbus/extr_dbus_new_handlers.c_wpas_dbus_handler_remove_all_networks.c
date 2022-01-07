
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; scalar_t__ sched_scanning; } ;
typedef int DBusMessage ;


 int remove_network ;
 int wpa_config_foreach_network (int ,int ,struct wpa_supplicant*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_remove_all_networks(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 if (wpa_s->sched_scanning)
  wpa_supplicant_cancel_sched_scan(wpa_s);


 wpa_config_foreach_network(wpa_s->conf, remove_network, wpa_s);
 return ((void*)0);
}
