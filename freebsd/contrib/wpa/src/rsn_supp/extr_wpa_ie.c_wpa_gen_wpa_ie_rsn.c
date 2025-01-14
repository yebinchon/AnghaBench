
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct wpa_sm {int mfp; TYPE_1__* cur_pmksa; scalar_t__ ocv; } ;
struct rsn_ie_hdr {int len; int * version; int elem_id; } ;
struct TYPE_2__ {int pmkid; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int PMKID_LEN ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SHA256 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SUITE_B ;
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 ;
 scalar_t__ RSN_AUTH_KEY_MGMT_CCKM ;
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
 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,scalar_t__) ;
 int RSN_VERSION ;
 int WLAN_EID_RSN ;
 int WPA_ASSERT (int) ;
 int WPA_CAPABILITY_MFPC ;
 int WPA_CAPABILITY_MFPR ;
 int WPA_CAPABILITY_OCVC ;
 int WPA_CIPHER_NONE ;
 int WPA_KEY_MGMT_CCKM ;
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
 int WPA_PUT_LE16 (int *,int ) ;
 int os_memcpy (int *,int ,int) ;
 scalar_t__ wpa_cipher_to_suite (int ,int) ;
 scalar_t__ wpa_cipher_valid_mgmt_group (int) ;
 int wpa_cipher_valid_pairwise (int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpa_gen_wpa_ie_rsn(u8 *rsn_ie, size_t rsn_ie_len,
         int pairwise_cipher, int group_cipher,
         int key_mgmt, int mgmt_group_cipher,
         struct wpa_sm *sm)
{
 u8 *pos;
 struct rsn_ie_hdr *hdr;
 u16 capab;
 u32 suite;

 if (rsn_ie_len < sizeof(*hdr) + RSN_SELECTOR_LEN +
     2 + RSN_SELECTOR_LEN + 2 + RSN_SELECTOR_LEN + 2 +
     (sm->cur_pmksa ? 2 + PMKID_LEN : 0)) {
  wpa_printf(MSG_DEBUG, "RSN: Too short IE buffer (%lu bytes)",
      (unsigned long) rsn_ie_len);
  return -1;
 }

 hdr = (struct rsn_ie_hdr *) rsn_ie;
 hdr->elem_id = WLAN_EID_RSN;
 WPA_PUT_LE16(hdr->version, RSN_VERSION);
 pos = (u8 *) (hdr + 1);

 suite = wpa_cipher_to_suite(WPA_PROTO_RSN, group_cipher);
 if (suite == 0) {
  wpa_printf(MSG_WARNING, "Invalid group cipher (%d).",
      group_cipher);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += RSN_SELECTOR_LEN;

 *pos++ = 1;
 *pos++ = 0;
 suite = wpa_cipher_to_suite(WPA_PROTO_RSN, pairwise_cipher);
 if (suite == 0 ||
     (!wpa_cipher_valid_pairwise(pairwise_cipher) &&
      pairwise_cipher != WPA_CIPHER_NONE)) {
  wpa_printf(MSG_WARNING, "Invalid pairwise cipher (%d).",
      pairwise_cipher);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += RSN_SELECTOR_LEN;

 *pos++ = 1;
 *pos++ = 0;
 if (key_mgmt == WPA_KEY_MGMT_IEEE8021X) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_UNSPEC_802_1X);
 } else if (key_mgmt == WPA_KEY_MGMT_PSK) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X);
 } else if (key_mgmt == WPA_KEY_MGMT_CCKM) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_CCKM);
 } else if (key_mgmt == WPA_KEY_MGMT_IEEE8021X_SUITE_B_192) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192);
 } else if (key_mgmt == WPA_KEY_MGMT_IEEE8021X_SUITE_B) {
  RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_802_1X_SUITE_B);
 } else {
  wpa_printf(MSG_WARNING, "Invalid key management type (%d).",
      key_mgmt);
  return -1;
 }
 pos += RSN_SELECTOR_LEN;


 capab = 0;






 if (sm->ocv)
  capab |= WPA_CAPABILITY_OCVC;
 WPA_PUT_LE16(pos, capab);
 pos += 2;

 if (sm->cur_pmksa) {

  *pos++ = 1;
  *pos++ = 0;

  os_memcpy(pos, sm->cur_pmksa->pmkid, PMKID_LEN);
  pos += PMKID_LEN;
 }
 hdr->len = (pos - rsn_ie) - 2;

 WPA_ASSERT((size_t) (pos - rsn_ie) <= rsn_ie_len);

 return pos - rsn_ie;
}
