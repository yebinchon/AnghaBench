
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; int ifname; } ;
struct wpa_ssid {int dummy; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_ctrl_iface_update_network (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_dup_network(
 struct wpa_supplicant *wpa_s, char *cmd,
 struct wpa_supplicant *dst_wpa_s)
{
 struct wpa_ssid *ssid_s, *ssid_d;
 char *name, *id, *value;
 int id_s, id_d, ret;


 id = os_strchr(cmd, ' ');
 if (id == ((void*)0))
  return -1;
 *id++ = '\0';

 name = os_strchr(id, ' ');
 if (name == ((void*)0))
  return -1;
 *name++ = '\0';

 id_s = atoi(cmd);
 id_d = atoi(id);

 wpa_printf(MSG_DEBUG,
     "CTRL_IFACE: DUP_NETWORK ifname=%s->%s id=%d->%d name='%s'",
     wpa_s->ifname, dst_wpa_s->ifname, id_s, id_d, name);

 ssid_s = wpa_config_get_network(wpa_s->conf, id_s);
 if (ssid_s == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find "
      "network id=%d", id_s);
  return -1;
 }

 ssid_d = wpa_config_get_network(dst_wpa_s->conf, id_d);
 if (ssid_d == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find "
      "network id=%d", id_d);
  return -1;
 }

 value = wpa_config_get(ssid_s, name);
 if (value == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Failed to get network "
      "variable '%s'", name);
  return -1;
 }

 ret = wpa_supplicant_ctrl_iface_update_network(dst_wpa_s, ssid_d, name,
             value);

 os_free(value);

 return ret;
}
