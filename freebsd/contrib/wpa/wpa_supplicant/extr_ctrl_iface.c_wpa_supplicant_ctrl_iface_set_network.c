
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int bssid_set; int disabled; int bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ os_memcmp (int ,int *,int) ;
 int os_memcpy (int *,int ,int) ;
 char* os_strchr (char*,char) ;
 int os_strlen (char*) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpa_supplicant_ctrl_iface_update_network (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ;
 int wpas_notify_network_bssid_set_changed (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_notify_network_type_changed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_set_network(
 struct wpa_supplicant *wpa_s, char *cmd)
{
 int id, ret, prev_bssid_set, prev_disabled;
 struct wpa_ssid *ssid;
 char *name, *value;
 u8 prev_bssid[ETH_ALEN];


 name = os_strchr(cmd, ' ');
 if (name == ((void*)0))
  return -1;
 *name++ = '\0';

 value = os_strchr(name, ' ');
 if (value == ((void*)0))
  return -1;
 *value++ = '\0';

 id = atoi(cmd);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: SET_NETWORK id=%d name='%s'",
     id, name);
 wpa_hexdump_ascii_key(MSG_DEBUG, "CTRL_IFACE: value",
         (u8 *) value, os_strlen(value));

 ssid = wpa_config_get_network(wpa_s->conf, id);
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find network "
      "id=%d", id);
  return -1;
 }

 prev_bssid_set = ssid->bssid_set;
 prev_disabled = ssid->disabled;
 os_memcpy(prev_bssid, ssid->bssid, ETH_ALEN);
 ret = wpa_supplicant_ctrl_iface_update_network(wpa_s, ssid, name,
             value);
 if (ret == 0 &&
     (ssid->bssid_set != prev_bssid_set ||
      os_memcmp(ssid->bssid, prev_bssid, ETH_ALEN) != 0))
  wpas_notify_network_bssid_set_changed(wpa_s, ssid);

 if (prev_disabled != ssid->disabled &&
     (prev_disabled == 2 || ssid->disabled == 2))
  wpas_notify_network_type_changed(wpa_s, ssid);

 return ret;
}
