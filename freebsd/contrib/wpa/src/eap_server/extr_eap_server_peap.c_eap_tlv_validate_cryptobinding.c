
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int const peap_version; int cmk; } ;
typedef int buf ;


 int EAP_TYPE_PEAP ;
 int MSG_DEBUG ;
 int SHA1_MAC_LEN ;
 int hmac_sha1 (int ,int,int*,int,int*) ;
 scalar_t__ os_memcmp_const (int*,int const*,int) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 int wpa_hexdump (int ,char*,int*,int) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_tlv_validate_cryptobinding(struct eap_sm *sm,
       struct eap_peap_data *data,
       const u8 *crypto_tlv,
       size_t crypto_tlv_len)
{
 u8 buf[61], mac[SHA1_MAC_LEN];
 const u8 *pos;

 if (crypto_tlv_len != 4 + 56) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Invalid cryptobinding TLV "
      "length %d", (int) crypto_tlv_len);
  return -1;
 }

 pos = crypto_tlv;
 pos += 4;
 if (pos[1] != data->peap_version) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Cryptobinding TLV Version "
      "mismatch (was %d; expected %d)",
      pos[1], data->peap_version);
  return -1;
 }

 if (pos[3] != 1) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Unexpected Cryptobinding TLV "
      "SubType %d", pos[3]);
  return -1;
 }
 pos += 4;
 pos += 32;


 os_memcpy(buf, crypto_tlv, 60);
 os_memset(buf + 4 + 4 + 32, 0, 20);
 buf[60] = EAP_TYPE_PEAP;
 hmac_sha1(data->cmk, 20, buf, sizeof(buf), mac);

 if (os_memcmp_const(mac, pos, SHA1_MAC_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Invalid Compound_MAC in "
      "cryptobinding TLV");
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CMK", data->cmk, 20);
  wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Cryptobinding seed data",
       buf, 61);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "EAP-PEAP: Valid cryptobinding TLV received");

 return 0;
}
