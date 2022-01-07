
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int peap_version; int crypto_binding_used; int const* cmk; int binding_nonce; } ;


 int EAP_TLV_CRYPTO_BINDING_TLV ;
 int const EAP_TYPE_PEAP ;
 int MSG_MSGDUMP ;
 size_t SHA1_MAC_LEN ;
 scalar_t__ hmac_sha1_vector (int const*,int,int,int const**,size_t*,int const*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int const* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static int eap_tlv_add_cryptobinding(struct eap_sm *sm,
         struct eap_peap_data *data,
         struct wpabuf *buf)
{
 u8 *mac;
 u8 eap_type = EAP_TYPE_PEAP;
 const u8 *addr[2];
 size_t len[2];
 u16 tlv_type;


 addr[0] = wpabuf_put(buf, 0);
 len[0] = 60;
 addr[1] = &eap_type;
 len[1] = 1;

 tlv_type = EAP_TLV_CRYPTO_BINDING_TLV;
 wpabuf_put_be16(buf, tlv_type);
 wpabuf_put_be16(buf, 56);

 wpabuf_put_u8(buf, 0);
 wpabuf_put_u8(buf, data->peap_version);
 wpabuf_put_u8(buf, data->peap_version);
 wpabuf_put_u8(buf, 1);
 wpabuf_put_data(buf, data->binding_nonce, 32);
 mac = wpabuf_put(buf, 20);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC CMK", data->cmk, 20);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 1",
      addr[0], len[0]);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 2",
      addr[1], len[1]);
 if (hmac_sha1_vector(data->cmk, 20, 2, addr, len, mac) < 0)
  return -1;
 wpa_hexdump(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC", mac, SHA1_MAC_LEN);
 data->crypto_binding_used = 1;

 return 0;
}
