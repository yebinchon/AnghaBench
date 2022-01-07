
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int bssid_set; int bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int is_zero_ether_addr (int *) ;
 int os_memcpy (int ,int *,int) ;
 char* os_strchr (char*,char) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_bssid(struct wpa_supplicant *wpa_s,
        char *cmd)
{
 char *pos;
 int id;
 struct wpa_ssid *ssid;
 u8 bssid[ETH_ALEN];


 pos = os_strchr(cmd, ' ');
 if (pos == ((void*)0))
  return -1;
 *pos++ = '\0';
 id = atoi(cmd);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: id=%d bssid='%s'", id, pos);
 if (hwaddr_aton(pos, bssid)) {
  wpa_printf(MSG_DEBUG ,"CTRL_IFACE: invalid BSSID '%s'", pos);
  return -1;
 }

 ssid = wpa_config_get_network(wpa_s->conf, id);
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find SSID id=%d "
      "to update", id);
  return -1;
 }

 os_memcpy(ssid->bssid, bssid, ETH_ALEN);
 ssid->bssid_set = !is_zero_ether_addr(bssid);

 return 0;
}
