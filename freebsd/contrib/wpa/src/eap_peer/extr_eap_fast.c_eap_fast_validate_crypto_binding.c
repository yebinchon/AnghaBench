
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tlv_crypto_binding_tlv {scalar_t__ version; scalar_t__ received_version; scalar_t__ subtype; int compound_mac; int nonce; } ;


 scalar_t__ EAP_FAST_VERSION ;
 scalar_t__ EAP_TLV_CRYPTO_BINDING_SUBTYPE_REQUEST ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int eap_fast_validate_crypto_binding(
 struct eap_tlv_crypto_binding_tlv *_bind)
{
 wpa_printf(MSG_DEBUG, "EAP-FAST: Crypto-Binding TLV: Version %d "
     "Received Version %d SubType %d",
     _bind->version, _bind->received_version, _bind->subtype);
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: NONCE",
      _bind->nonce, sizeof(_bind->nonce));
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Compound MAC",
      _bind->compound_mac, sizeof(_bind->compound_mac));

 if (_bind->version != EAP_FAST_VERSION ||
     _bind->received_version != EAP_FAST_VERSION ||
     _bind->subtype != EAP_TLV_CRYPTO_BINDING_SUBTYPE_REQUEST) {
  wpa_printf(MSG_INFO, "EAP-FAST: Invalid version/subtype in "
      "Crypto-Binding TLV: Version %d "
      "Received Version %d SubType %d",
      _bind->version, _bind->received_version,
      _bind->subtype);
  return -1;
 }

 return 0;
}
