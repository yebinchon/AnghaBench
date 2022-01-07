
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa; } ;
struct wpa_ssid {int group_cipher; int pairwise_cipher; int key_mgmt; } ;
struct wpa_ie_data {int group_cipher; int pairwise_cipher; int key_mgmt; int capabilities; } ;


 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_CAPABILITY_MFPC ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_sm_parse_own_wpa_ie (int ,struct wpa_ie_data*) ;
 scalar_t__ wpas_get_ssid_pmf (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static int wpa_supplicant_suites_from_ai(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid,
      struct wpa_ie_data *ie)
{
 int ret = wpa_sm_parse_own_wpa_ie(wpa_s->wpa, ie);
 if (ret) {
  if (ret == -2) {
   wpa_msg(wpa_s, MSG_INFO, "WPA: Failed to parse WPA IE "
    "from association info");
  }
  return -1;
 }

 wpa_dbg(wpa_s, MSG_DEBUG, "WPA: Using WPA IE from AssocReq to set "
  "cipher suites");
 if (!(ie->group_cipher & ssid->group_cipher)) {
  wpa_msg(wpa_s, MSG_INFO, "WPA: Driver used disabled group "
   "cipher 0x%x (mask 0x%x) - reject",
   ie->group_cipher, ssid->group_cipher);
  return -1;
 }
 if (!(ie->pairwise_cipher & ssid->pairwise_cipher)) {
  wpa_msg(wpa_s, MSG_INFO, "WPA: Driver used disabled pairwise "
   "cipher 0x%x (mask 0x%x) - reject",
   ie->pairwise_cipher, ssid->pairwise_cipher);
  return -1;
 }
 if (!(ie->key_mgmt & ssid->key_mgmt)) {
  wpa_msg(wpa_s, MSG_INFO, "WPA: Driver used disabled key "
   "management 0x%x (mask 0x%x) - reject",
   ie->key_mgmt, ssid->key_mgmt);
  return -1;
 }
 return 0;
}
