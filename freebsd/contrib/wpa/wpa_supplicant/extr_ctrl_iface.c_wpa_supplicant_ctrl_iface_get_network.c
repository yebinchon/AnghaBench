
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int dummy; } ;


 int MSG_EXCESSIVE ;
 int atoi (char*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 size_t os_strlcpy (char*,char*,size_t) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 char* wpa_config_get_no_key (struct wpa_ssid*,char*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_get_network(
 struct wpa_supplicant *wpa_s, char *cmd, char *buf, size_t buflen)
{
 int id;
 size_t res;
 struct wpa_ssid *ssid;
 char *name, *value;


 name = os_strchr(cmd, ' ');
 if (name == ((void*)0) || buflen == 0)
  return -1;
 *name++ = '\0';

 id = atoi(cmd);
 wpa_printf(MSG_EXCESSIVE, "CTRL_IFACE: GET_NETWORK id=%d name='%s'",
     id, name);

 ssid = wpa_config_get_network(wpa_s->conf, id);
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_EXCESSIVE, "CTRL_IFACE: Could not find network "
      "id=%d", id);
  return -1;
 }

 value = wpa_config_get_no_key(ssid, name);
 if (value == ((void*)0)) {
  wpa_printf(MSG_EXCESSIVE, "CTRL_IFACE: Failed to get network "
      "variable '%s'", name);
  return -1;
 }

 res = os_strlcpy(buf, value, buflen);
 if (res >= buflen) {
  os_free(value);
  return -1;
 }

 os_free(value);

 return res;
}
