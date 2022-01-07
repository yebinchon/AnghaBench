
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int disabled; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_disable_network (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_disable_network(
 struct wpa_supplicant *wpa_s, char *cmd)
{
 int id;
 struct wpa_ssid *ssid;


 if (os_strcmp(cmd, "all") == 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: DISABLE_NETWORK all");
  ssid = ((void*)0);
 } else {
  id = atoi(cmd);
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: DISABLE_NETWORK id=%d", id);

  ssid = wpa_config_get_network(wpa_s->conf, id);
  if (ssid == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find "
       "network id=%d", id);
   return -1;
  }
  if (ssid->disabled == 2) {
   wpa_printf(MSG_DEBUG, "CTRL_IFACE: Cannot use "
       "DISABLE_NETWORK with persistent P2P "
       "group");
   return -1;
  }
 }
 wpa_supplicant_disable_network(wpa_s, ssid);

 return 0;
}
