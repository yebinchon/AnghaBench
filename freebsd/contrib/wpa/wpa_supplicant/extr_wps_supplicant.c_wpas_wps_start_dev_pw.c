
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
typedef char u8 ;
typedef int u16 ;
struct wpa_supplicant {int wps_ap_iter; scalar_t__ wps_fragment_size; TYPE_1__* go_params; scalar_t__ ap_iface; } ;
struct TYPE_4__ {scalar_t__ fragment_size; } ;
struct wpa_ssid {int temporary; int p2p_group; int pbss; char* ssid; size_t ssid_len; TYPE_2__ eap; } ;
typedef int hash ;
struct TYPE_3__ {int ssid_len; char* ssid; int freq; } ;


 int DEV_PW_NFC_CONNECTION_HANDOVER ;
 int MSG_DEBUG ;
 int WPS_OOB_PUBKEY_HASH_LEN ;
 int WPS_PBC_WALK_TIME ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 scalar_t__ is_zero_ether_addr (char const*) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,int) ;
 int os_snprintf (char*,int,char*,...) ;
 char* os_zalloc (int) ;
 scalar_t__ wpa_config_set (struct wpa_ssid*,char*,char*,int ) ;
 int wpa_hexdump_ascii (int ,char*,char*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex_uppercase (char*,int,char const*,int) ;
 int wpas_clear_wps (struct wpa_supplicant*) ;
 struct wpa_ssid* wpas_wps_add_network (struct wpa_supplicant*,int ,char const*,char const*) ;
 int wpas_wps_reassoc (struct wpa_supplicant*,struct wpa_ssid*,char const*,int) ;
 int wpas_wps_timeout ;
 scalar_t__ wps_generate_pin (unsigned int*) ;

__attribute__((used)) static int wpas_wps_start_dev_pw(struct wpa_supplicant *wpa_s,
     const u8 *dev_addr, const u8 *bssid,
     const char *pin, int p2p_group, u16 dev_pw_id,
     const u8 *peer_pubkey_hash,
     const u8 *ssid_val, size_t ssid_len, int freq)
{
 struct wpa_ssid *ssid;
 char val[128 + 2 * WPS_OOB_PUBKEY_HASH_LEN];
 unsigned int rpin = 0;
 char hash[2 * WPS_OOB_PUBKEY_HASH_LEN + 10];
 wpas_clear_wps(wpa_s);
 if (bssid && is_zero_ether_addr(bssid))
  bssid = ((void*)0);
 ssid = wpas_wps_add_network(wpa_s, 0, dev_addr, bssid);
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Could not add network");
  return -1;
 }
 ssid->temporary = 1;
 ssid->p2p_group = p2p_group;





 if (!p2p_group)
  ssid->pbss = 2;
 if (ssid_val) {
  ssid->ssid = os_malloc(ssid_len);
  if (ssid->ssid) {
   os_memcpy(ssid->ssid, ssid_val, ssid_len);
   ssid->ssid_len = ssid_len;
  }
 }
 if (peer_pubkey_hash) {
  os_memcpy(hash, " pkhash=", 8);
  wpa_snprintf_hex_uppercase(hash + 8, sizeof(hash) - 8,
        peer_pubkey_hash,
        WPS_OOB_PUBKEY_HASH_LEN);
 } else {
  hash[0] = '\0';
 }
 if (pin)
  os_snprintf(val, sizeof(val), "\"pin=%s dev_pw_id=%u%s\"",
       pin, dev_pw_id, hash);
 else if (pin == ((void*)0) && dev_pw_id == DEV_PW_NFC_CONNECTION_HANDOVER) {
  os_snprintf(val, sizeof(val), "\"dev_pw_id=%u%s\"",
       dev_pw_id, hash);
 } else {
  if (wps_generate_pin(&rpin) < 0) {
   wpa_printf(MSG_DEBUG, "WPS: Could not generate PIN");
   return -1;
  }
  os_snprintf(val, sizeof(val), "\"pin=%08d dev_pw_id=%u%s\"",
       rpin, dev_pw_id, hash);
 }
 if (wpa_config_set(ssid, "phase1", val, 0) < 0) {
  wpa_printf(MSG_DEBUG, "WPS: Failed to set phase1 '%s'", val);
  return -1;
 }
 if (wpa_s->wps_fragment_size)
  ssid->eap.fragment_size = wpa_s->wps_fragment_size;
 eloop_register_timeout(WPS_PBC_WALK_TIME, 0, wpas_wps_timeout,
          wpa_s, ((void*)0));
 wpa_s->wps_ap_iter = 1;
 wpas_wps_reassoc(wpa_s, ssid, bssid, freq);
 return rpin;
}
