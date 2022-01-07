
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; int eapol; struct wpa_ssid* current_ssid; int wpa; } ;
struct wpa_ssid {scalar_t__ passphrase; scalar_t__ ssid_len; } ;


 int MSG_DEBUG ;
 int eapol_sm_invalidate_cached_session (int ) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int wpa_config_set (struct wpa_ssid*,char*,char*,int ) ;
 int wpa_config_update_prio_list (int ) ;
 int wpa_config_update_psk (struct wpa_ssid*) ;
 int wpa_printf (int ,char*,char*) ;
 int wpa_sm_pmksa_cache_flush (int ,struct wpa_ssid*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_update_network(
 struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid,
 char *name, char *value)
{
 int ret;

 ret = wpa_config_set(ssid, name, value, 0);
 if (ret < 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Failed to set network "
      "variable '%s'", name);
  return -1;
 }
 if (ret == 1)
  return 0;

 if (os_strcmp(name, "bssid") != 0 &&
     os_strcmp(name, "bssid_hint") != 0 &&
     os_strcmp(name, "priority") != 0) {
  wpa_sm_pmksa_cache_flush(wpa_s->wpa, ssid);

  if (wpa_s->current_ssid == ssid ||
      wpa_s->current_ssid == ((void*)0)) {




   eapol_sm_invalidate_cached_session(wpa_s->eapol);
  }
 }

 if ((os_strcmp(name, "psk") == 0 &&
      value[0] == '"' && ssid->ssid_len) ||
     (os_strcmp(name, "ssid") == 0 && ssid->passphrase))
  wpa_config_update_psk(ssid);
 else if (os_strcmp(name, "priority") == 0)
  wpa_config_update_prio_list(wpa_s->conf);

 return 0;
}
