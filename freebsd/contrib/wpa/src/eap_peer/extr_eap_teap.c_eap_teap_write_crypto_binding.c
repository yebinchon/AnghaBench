
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct teap_tlv_hdr {int dummy; } ;
struct teap_tlv_crypto_binding {int subtype; int msk_compound_mac; int emsk_compound_mac; int nonce; int received_version; int version; void* length; void* tlv_type; } ;
struct eap_teap_data {int peer_outer_tlvs; int server_outer_tlvs; int tls_cs; int received_version; } ;


 int EAP_TEAP_COMPOUND_MAC_LEN ;
 int EAP_TEAP_VERSION ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC ;
 int TEAP_CRYPTO_BINDING_MSK_CMAC ;
 int TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE ;
 int TEAP_TLV_CRYPTO_BINDING ;
 int TEAP_TLV_MANDATORY ;
 scalar_t__ eap_teap_compound_mac (int ,struct teap_tlv_crypto_binding*,int ,int ,int const*,int ) ;
 void* host_to_be16 (int) ;
 int inc_byte_array (int ,int) ;
 int os_memcpy (int ,int ,int) ;
 int os_memset (int ,int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,int ,int ,int,int) ;

__attribute__((used)) static int eap_teap_write_crypto_binding(
 struct eap_teap_data *data,
 struct teap_tlv_crypto_binding *rbind,
 const struct teap_tlv_crypto_binding *cb,
 const u8 *cmk_msk, const u8 *cmk_emsk)
{
 u8 subtype, flags;

 rbind->tlv_type = host_to_be16(TEAP_TLV_MANDATORY |
           TEAP_TLV_CRYPTO_BINDING);
 rbind->length = host_to_be16(sizeof(*rbind) -
         sizeof(struct teap_tlv_hdr));
 rbind->version = EAP_TEAP_VERSION;
 rbind->received_version = data->received_version;


 flags = cmk_emsk ? TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC :
  TEAP_CRYPTO_BINDING_MSK_CMAC;
 subtype = TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE;
 rbind->subtype = (flags << 4) | subtype;
 os_memcpy(rbind->nonce, cb->nonce, sizeof(cb->nonce));
 inc_byte_array(rbind->nonce, sizeof(rbind->nonce));
 os_memset(rbind->emsk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);
 os_memset(rbind->msk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);

 if (eap_teap_compound_mac(data->tls_cs, rbind, data->server_outer_tlvs,
      data->peer_outer_tlvs, cmk_msk,
      rbind->msk_compound_mac) < 0)
  return -1;
 if (cmk_emsk &&
     eap_teap_compound_mac(data->tls_cs, rbind, data->server_outer_tlvs,
      data->peer_outer_tlvs, cmk_emsk,
      rbind->emsk_compound_mac) < 0)
  return -1;

 wpa_printf(MSG_DEBUG,
     "EAP-TEAP: Reply Crypto-Binding TLV: Version %u Received Version %u Flags %u SubType %u",
     rbind->version, rbind->received_version, flags, subtype);
 wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: Nonce",
      rbind->nonce, sizeof(rbind->nonce));
 wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: EMSK Compound MAC",
      rbind->emsk_compound_mac, sizeof(rbind->emsk_compound_mac));
 wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: MSK Compound MAC",
      rbind->msk_compound_mac, sizeof(rbind->msk_compound_mac));

 return 0;
}
