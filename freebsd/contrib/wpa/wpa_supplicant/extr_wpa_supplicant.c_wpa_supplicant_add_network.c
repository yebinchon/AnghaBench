
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int disabled; } ;


 struct wpa_ssid* wpa_config_add_network (int ) ;
 int wpa_config_set_network_defaults (struct wpa_ssid*) ;
 int wpas_notify_network_added (struct wpa_supplicant*,struct wpa_ssid*) ;

struct wpa_ssid * wpa_supplicant_add_network(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid;

 ssid = wpa_config_add_network(wpa_s->conf);
 if (!ssid)
  return ((void*)0);
 wpas_notify_network_added(wpa_s, ssid);
 ssid->disabled = 1;
 wpa_config_set_network_defaults(ssid);

 return ssid;
}
