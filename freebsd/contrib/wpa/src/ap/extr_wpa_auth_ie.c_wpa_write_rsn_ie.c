
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct wpa_auth_config {int wpa_group; int rsn_pairwise; int wpa_key_mgmt; scalar_t__ ieee80211w; int group_mgmt_cipher; scalar_t__ ocv; scalar_t__ wmm_enabled; scalar_t__ rsn_preauth; } ;
struct rsn_ie_hdr {int len; int * version; int elem_id; } ;


 int BIT (int) ;
 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ;
 int MSG_DEBUG ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int PMKID_LEN ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SHA256 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SUITE_B ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_DPP ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FILS_SHA256 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FILS_SHA384 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_802_1X ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_FILS_SHA256 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_FILS_SHA384 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_PSK ;
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_SAE ;
 scalar_t__ RSN_AUTH_KEY_MGMT_OSEN ;
 scalar_t__ RSN_AUTH_KEY_MGMT_OWE ;
 scalar_t__ RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X ;
 scalar_t__ RSN_AUTH_KEY_MGMT_PSK_SHA256 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_SAE ;
 scalar_t__ RSN_AUTH_KEY_MGMT_UNSPEC_802_1X ;
 scalar_t__ RSN_CIPHER_SUITE_AES_128_CMAC ;
 scalar_t__ RSN_CIPHER_SUITE_BIP_CMAC_256 ;
 scalar_t__ RSN_CIPHER_SUITE_BIP_GMAC_128 ;
 scalar_t__ RSN_CIPHER_SUITE_BIP_GMAC_256 ;
 int RSN_NUM_REPLAY_COUNTERS_16 ;
 scalar_t__ RSN_SELECTOR (int,int,int,int) ;
 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,scalar_t__) ;
 int RSN_VERSION ;
 int WLAN_EID_RSN ;
 int WPA_CAPABILITY_MFPC ;
 int WPA_CAPABILITY_MFPR ;
 int WPA_CAPABILITY_OCVC ;
 int WPA_CAPABILITY_PREAUTH ;




 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_IEEE8021X ;
 int WPA_KEY_MGMT_FT_IEEE8021X_SHA384 ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int WPA_PROTO_RSN ;
 int WPA_PUT_LE16 (int *,int) ;
 int os_memcpy (int *,int const*,int) ;
 int os_memset (int *,int,int) ;
 int rsn_cipher_put_suites (int *,int) ;
 scalar_t__ rsn_testing ;
 scalar_t__ wpa_cipher_to_suite (int ,int) ;
 int wpa_printf (int ,char*,int) ;

int wpa_write_rsn_ie(struct wpa_auth_config *conf, u8 *buf, size_t len,
       const u8 *pmkid)
{
 struct rsn_ie_hdr *hdr;
 int num_suites, res;
 u8 *pos, *count;
 u16 capab;
 u32 suite;

 hdr = (struct rsn_ie_hdr *) buf;
 hdr->elem_id = WLAN_EID_RSN;
 WPA_PUT_LE16(hdr->version, RSN_VERSION);
 pos = (u8 *) (hdr + 1);

 suite = wpa_cipher_to_suite(WPA_PROTO_RSN, conf->wpa_group);
 if (suite == 0) {
  wpa_printf(MSG_DEBUG, "Invalid group cipher (%d).",
      conf->wpa_group);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += RSN_SELECTOR_LEN;

 num_suites = 0;
 count = pos;
 pos += 2;
 res = rsn_cipher_put_suites(pos, conf->rsn_pairwise);
 num_suites += res;
 pos += res * RSN_SELECTOR_LEN;
 if (num_suites == 0) {
  wpa_printf(MSG_DEBUG, "Invalid pairwise cipher (%d).",
      conf->rsn_pairwise);
  return -1;
 }
 WPA_PUT_LE16(count, num_suites);

 num_suites = 0;
 count = pos;
 pos += 2;
 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_UNSPEC_802_1X);
  pos += RSN_SELECTOR_LEN;
  num_suites++;
 }
 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X);
  pos += RSN_SELECTOR_LEN;
  num_suites++;
 }
 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X_SUITE_B) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_802_1X_SUITE_B);
  pos += RSN_SELECTOR_LEN;
  num_suites++;
 }
 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X_SUITE_B_192) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192);
  pos += RSN_SELECTOR_LEN;
  num_suites++;
 }
 if (num_suites == 0) {
  wpa_printf(MSG_DEBUG, "Invalid key management type (%d).",
      conf->wpa_key_mgmt);
  return -1;
 }
 WPA_PUT_LE16(count, num_suites);


 capab = 0;
 if (conf->rsn_preauth)
  capab |= WPA_CAPABILITY_PREAUTH;
 if (conf->wmm_enabled) {

  capab |= (RSN_NUM_REPLAY_COUNTERS_16 << 2);
 }
 WPA_PUT_LE16(pos, capab);
 pos += 2;

 if (pmkid) {
  if (2 + PMKID_LEN > buf + len - pos)
   return -1;

  WPA_PUT_LE16(pos, 1);
  pos += 2;
  os_memcpy(pos, pmkid, PMKID_LEN);
  pos += PMKID_LEN;
 }
 hdr->len = (pos - buf) - 2;

 return pos - buf;
}
