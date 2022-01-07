
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
struct wps_new_ap_settings {int key_hex; int encr; int auth; int ssid_hex; } ;
struct wpa_supplicant {scalar_t__ wps_fragment_size; scalar_t__ ap_iface; } ;
struct TYPE_2__ {scalar_t__ fragment_size; } ;
struct wpa_ssid {int temporary; TYPE_1__ eap; } ;


 int MSG_DEBUG ;
 int WPS_PBC_WALK_TIME ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int os_snprintf (char*,int,char*,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 scalar_t__ wpa_config_set (struct wpa_ssid*,char*,char*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpas_clear_wps (struct wpa_supplicant*) ;
 struct wpa_ssid* wpas_wps_add_network (struct wpa_supplicant*,int,int *,int const*) ;
 int wpas_wps_reassoc (struct wpa_supplicant*,struct wpa_ssid*,int const*,int ) ;
 int wpas_wps_timeout ;

int wpas_wps_start_reg(struct wpa_supplicant *wpa_s, const u8 *bssid,
         const char *pin, struct wps_new_ap_settings *settings)
{
 struct wpa_ssid *ssid;
 char val[200];
 char *pos, *end;
 int res;
 if (!pin)
  return -1;
 wpas_clear_wps(wpa_s);
 ssid = wpas_wps_add_network(wpa_s, 1, ((void*)0), bssid);
 if (ssid == ((void*)0))
  return -1;
 ssid->temporary = 1;
 pos = val;
 end = pos + sizeof(val);
 res = os_snprintf(pos, end - pos, "\"pin=%s", pin);
 if (os_snprintf_error(end - pos, res))
  return -1;
 pos += res;
 if (settings) {
  res = os_snprintf(pos, end - pos, " new_ssid=%s new_auth=%s "
      "new_encr=%s new_key=%s",
      settings->ssid_hex, settings->auth,
      settings->encr, settings->key_hex);
  if (os_snprintf_error(end - pos, res))
   return -1;
  pos += res;
 }
 res = os_snprintf(pos, end - pos, "\"");
 if (os_snprintf_error(end - pos, res))
  return -1;
 if (wpa_config_set(ssid, "phase1", val, 0) < 0)
  return -1;
 if (wpa_s->wps_fragment_size)
  ssid->eap.fragment_size = wpa_s->wps_fragment_size;
 eloop_register_timeout(WPS_PBC_WALK_TIME, 0, wpas_wps_timeout,
          wpa_s, ((void*)0));
 wpas_wps_reassoc(wpa_s, ssid, bssid, 0);
 return 0;
}
