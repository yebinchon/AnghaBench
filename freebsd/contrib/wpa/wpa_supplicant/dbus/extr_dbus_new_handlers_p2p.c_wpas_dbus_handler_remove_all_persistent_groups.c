
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {struct wpa_config* conf; TYPE_1__* global; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessage ;


 scalar_t__ network_is_persistent_group (struct wpa_ssid*) ;
 int remove_persistent_group (struct wpa_supplicant*,struct wpa_ssid*) ;

DBusMessage * wpas_dbus_handler_remove_all_persistent_groups(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid, *next;
 struct wpa_config *config;

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 config = wpa_s->conf;
 ssid = config->ssid;
 while (ssid) {
  next = ssid->next;
  if (network_is_persistent_group(ssid))
   remove_persistent_group(wpa_s, ssid);
  ssid = next;
 }
 return ((void*)0);
}
