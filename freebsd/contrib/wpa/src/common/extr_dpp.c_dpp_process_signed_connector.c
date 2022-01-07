
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dpp_signed_connector_info {unsigned char* payload; size_t payload_len; } ;
struct dpp_curve_params {int jwk_crv; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,size_t,int *) ;
 int BN_free (int *) ;
 int DPP_STATUS_INVALID_CONNECTOR ;
 int DPP_STATUS_NO_MATCH ;
 int DPP_STATUS_OK ;
 int ECDSA_SIG_free (int *) ;
 int * ECDSA_SIG_new () ;
 int ECDSA_SIG_set0 (int *,int *,int *) ;
 int EC_GROUP_get_curve_name (int const*) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int ERR_clear_error () ;
 scalar_t__ ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_DigestVerifyFinal (int *,unsigned char*,int) ;
 int EVP_DigestVerifyInit (int *,int *,int const*,int *,int *) ;
 int EVP_DigestVerifyUpdate (int *,char const*,int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int MSG_DEBUG ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ SHA256_MAC_LEN ;
 void* base64_url_decode (unsigned char const*,int,size_t*) ;
 scalar_t__ dpp_check_pubkey_match (int *,struct wpabuf*) ;
 struct dpp_curve_params* dpp_get_curve_nid (int) ;
 struct wpabuf* dpp_parse_jws_prot_hdr (struct dpp_curve_params const*,unsigned char*,size_t,int const**) ;
 int i2d_ECDSA_SIG (int *,unsigned char**) ;
 int os_free (unsigned char*) ;
 int os_memset (struct dpp_signed_connector_info*,int ,int) ;
 char* os_strchr (char const*,char) ;
 int os_strlen (char const*) ;
 int wpa_hexdump (int ,char*,unsigned char*,int) ;
 int wpa_hexdump_ascii (int ,char*,unsigned char*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static enum dpp_status_error
dpp_process_signed_connector(struct dpp_signed_connector_info *info,
        EVP_PKEY *csign_pub, const char *connector)
{
 enum dpp_status_error ret = 255;
 const char *pos, *end, *signed_start, *signed_end;
 struct wpabuf *kid = ((void*)0);
 unsigned char *prot_hdr = ((void*)0), *signature = ((void*)0);
 size_t prot_hdr_len = 0, signature_len = 0;
 const EVP_MD *sign_md = ((void*)0);
 unsigned char *der = ((void*)0);
 int der_len;
 int res;
 EVP_MD_CTX *md_ctx = ((void*)0);
 ECDSA_SIG *sig = ((void*)0);
 BIGNUM *r = ((void*)0), *s = ((void*)0);
 const struct dpp_curve_params *curve;
 EC_KEY *eckey;
 const EC_GROUP *group;
 int nid;

 eckey = EVP_PKEY_get1_EC_KEY(csign_pub);
 if (!eckey)
  goto fail;
 group = EC_KEY_get0_group(eckey);
 if (!group)
  goto fail;
 nid = EC_GROUP_get_curve_name(group);
 curve = dpp_get_curve_nid(nid);
 if (!curve)
  goto fail;
 wpa_printf(MSG_DEBUG, "DPP: C-sign-key group: %s", curve->jwk_crv);
 os_memset(info, 0, sizeof(*info));

 signed_start = pos = connector;
 end = os_strchr(pos, '.');
 if (!end) {
  wpa_printf(MSG_DEBUG, "DPP: Missing dot(1) in signedConnector");
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }
 prot_hdr = base64_url_decode((const unsigned char *) pos,
         end - pos, &prot_hdr_len);
 if (!prot_hdr) {
  wpa_printf(MSG_DEBUG,
      "DPP: Failed to base64url decode signedConnector JWS Protected Header");
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }
 wpa_hexdump_ascii(MSG_DEBUG,
     "DPP: signedConnector - JWS Protected Header",
     prot_hdr, prot_hdr_len);
 kid = dpp_parse_jws_prot_hdr(curve, prot_hdr, prot_hdr_len, &sign_md);
 if (!kid) {
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }
 if (wpabuf_len(kid) != SHA256_MAC_LEN) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected signedConnector JWS Protected Header kid length: %u (expected %u)",
      (unsigned int) wpabuf_len(kid), SHA256_MAC_LEN);
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }

 pos = end + 1;
 end = os_strchr(pos, '.');
 if (!end) {
  wpa_printf(MSG_DEBUG,
      "DPP: Missing dot(2) in signedConnector");
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }
 signed_end = end - 1;
 info->payload = base64_url_decode((const unsigned char *) pos,
       end - pos, &info->payload_len);
 if (!info->payload) {
  wpa_printf(MSG_DEBUG,
      "DPP: Failed to base64url decode signedConnector JWS Payload");
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }
 wpa_hexdump_ascii(MSG_DEBUG,
     "DPP: signedConnector - JWS Payload",
     info->payload, info->payload_len);
 pos = end + 1;
 signature = base64_url_decode((const unsigned char *) pos,
          os_strlen(pos), &signature_len);
 if (!signature) {
  wpa_printf(MSG_DEBUG,
      "DPP: Failed to base64url decode signedConnector signature");
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
  }
 wpa_hexdump(MSG_DEBUG, "DPP: signedConnector - signature",
      signature, signature_len);

 if (dpp_check_pubkey_match(csign_pub, kid) < 0) {
  ret = DPP_STATUS_NO_MATCH;
  goto fail;
 }

 if (signature_len & 0x01) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected signedConnector signature length (%d)",
      (int) signature_len);
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }



 r = BN_bin2bn(signature, signature_len / 2, ((void*)0));
 s = BN_bin2bn(signature + signature_len / 2, signature_len / 2, ((void*)0));
 sig = ECDSA_SIG_new();
 if (!r || !s || !sig || ECDSA_SIG_set0(sig, r, s) != 1)
  goto fail;
 r = ((void*)0);
 s = ((void*)0);

 der_len = i2d_ECDSA_SIG(sig, &der);
 if (der_len <= 0) {
  wpa_printf(MSG_DEBUG, "DPP: Could not DER encode signature");
  goto fail;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: DER encoded signature", der, der_len);
 md_ctx = EVP_MD_CTX_create();
 if (!md_ctx)
  goto fail;

 ERR_clear_error();
 if (EVP_DigestVerifyInit(md_ctx, ((void*)0), sign_md, ((void*)0), csign_pub) != 1) {
  wpa_printf(MSG_DEBUG, "DPP: EVP_DigestVerifyInit failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }
 if (EVP_DigestVerifyUpdate(md_ctx, signed_start,
       signed_end - signed_start + 1) != 1) {
  wpa_printf(MSG_DEBUG, "DPP: EVP_DigestVerifyUpdate failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }
 res = EVP_DigestVerifyFinal(md_ctx, der, der_len);
 if (res != 1) {
  wpa_printf(MSG_DEBUG,
      "DPP: EVP_DigestVerifyFinal failed (res=%d): %s",
      res, ERR_error_string(ERR_get_error(), ((void*)0)));
  ret = DPP_STATUS_INVALID_CONNECTOR;
  goto fail;
 }

 ret = DPP_STATUS_OK;
fail:
 EC_KEY_free(eckey);
 EVP_MD_CTX_destroy(md_ctx);
 os_free(prot_hdr);
 wpabuf_free(kid);
 os_free(signature);
 ECDSA_SIG_free(sig);
 BN_free(r);
 BN_free(s);
 OPENSSL_free(der);
 return ret;
}
