
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tlv_hdr {int dummy; } ;
struct eap_tlv_crypto_binding_tlv {int compound_mac; int nonce; int subtype; int received_version; int version; void* length; void* tlv_type; } ;


 int EAP_FAST_CMK_LEN ;
 int EAP_FAST_VERSION ;
 int EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE ;
 int EAP_TLV_CRYPTO_BINDING_TLV ;
 int EAP_TLV_TYPE_MANDATORY ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int hmac_sha1 (int const*,int ,int *,int,int ) ;
 void* host_to_be16 (int) ;
 int inc_byte_array (int ,int) ;
 int os_memcpy (int ,int ,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void eap_fast_write_crypto_binding(
 struct eap_tlv_crypto_binding_tlv *rbind,
 struct eap_tlv_crypto_binding_tlv *_bind, const u8 *cmk)
{
 rbind->tlv_type = host_to_be16(EAP_TLV_TYPE_MANDATORY |
           EAP_TLV_CRYPTO_BINDING_TLV);
 rbind->length = host_to_be16(sizeof(*rbind) -
         sizeof(struct eap_tlv_hdr));
 rbind->version = EAP_FAST_VERSION;
 rbind->received_version = _bind->version;
 rbind->subtype = EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE;
 os_memcpy(rbind->nonce, _bind->nonce, sizeof(_bind->nonce));
 inc_byte_array(rbind->nonce, sizeof(rbind->nonce));
 hmac_sha1(cmk, EAP_FAST_CMK_LEN, (u8 *) rbind, sizeof(*rbind),
    rbind->compound_mac);

 wpa_printf(MSG_DEBUG, "EAP-FAST: Reply Crypto-Binding TLV: Version %d "
     "Received Version %d SubType %d",
     rbind->version, rbind->received_version, rbind->subtype);
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: NONCE",
      rbind->nonce, sizeof(rbind->nonce));
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Compound MAC",
      rbind->compound_mac, sizeof(rbind->compound_mac));
}
