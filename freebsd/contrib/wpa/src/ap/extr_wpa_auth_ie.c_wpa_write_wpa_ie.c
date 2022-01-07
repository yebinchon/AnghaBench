
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wpa_ie_hdr {int len; int * version; int * oui; int elem_id; } ;
struct wpa_auth_config {int wpa_group; int wpa_pairwise; int wpa_key_mgmt; } ;


 int MSG_DEBUG ;
 int RSN_SELECTOR_PUT (int *,scalar_t__) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 scalar_t__ WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X ;
 scalar_t__ WPA_AUTH_KEY_MGMT_UNSPEC_802_1X ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_PSK ;
 scalar_t__ WPA_OUI_TYPE ;
 int WPA_PROTO_WPA ;
 int WPA_PUT_LE16 (int *,int) ;
 int WPA_SELECTOR_LEN ;
 int WPA_VERSION ;
 int wpa_cipher_put_suites (int *,int) ;
 scalar_t__ wpa_cipher_to_suite (int ,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpa_write_wpa_ie(struct wpa_auth_config *conf, u8 *buf, size_t len)
{
 struct wpa_ie_hdr *hdr;
 int num_suites;
 u8 *pos, *count;
 u32 suite;

 hdr = (struct wpa_ie_hdr *) buf;
 hdr->elem_id = WLAN_EID_VENDOR_SPECIFIC;
 RSN_SELECTOR_PUT(hdr->oui, WPA_OUI_TYPE);
 WPA_PUT_LE16(hdr->version, WPA_VERSION);
 pos = (u8 *) (hdr + 1);

 suite = wpa_cipher_to_suite(WPA_PROTO_WPA, conf->wpa_group);
 if (suite == 0) {
  wpa_printf(MSG_DEBUG, "Invalid group cipher (%d).",
      conf->wpa_group);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += WPA_SELECTOR_LEN;

 count = pos;
 pos += 2;

 num_suites = wpa_cipher_put_suites(pos, conf->wpa_pairwise);
 if (num_suites == 0) {
  wpa_printf(MSG_DEBUG, "Invalid pairwise cipher (%d).",
      conf->wpa_pairwise);
  return -1;
 }
 pos += num_suites * WPA_SELECTOR_LEN;
 WPA_PUT_LE16(count, num_suites);

 num_suites = 0;
 count = pos;
 pos += 2;

 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_UNSPEC_802_1X);
  pos += WPA_SELECTOR_LEN;
  num_suites++;
 }
 if (conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X);
  pos += WPA_SELECTOR_LEN;
  num_suites++;
 }

 if (num_suites == 0) {
  wpa_printf(MSG_DEBUG, "Invalid key management type (%d).",
      conf->wpa_key_mgmt);
  return -1;
 }
 WPA_PUT_LE16(count, num_suites);



 hdr->len = (pos - buf) - 2;

 return pos - buf;
}
