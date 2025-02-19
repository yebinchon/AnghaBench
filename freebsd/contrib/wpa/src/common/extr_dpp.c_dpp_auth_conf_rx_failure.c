
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef size_t u16 ;
struct dpp_authentication {int const* r_nonce; TYPE_1__* curve; int k2; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {size_t nonce_len; int hash_len; } ;


 size_t AES_BLOCK_SIZE ;
 int DPP_ATTR_R_NONCE ;
 size_t DPP_HDR_LEN ;
 int DPP_STATUS_AUTH_FAILURE ;
 int DPP_STATUS_NOT_COMPATIBLE ;
 int MSG_DEBUG ;
 scalar_t__ aes_siv_decrypt (int ,int ,int const*,size_t,int,int const**,size_t*,int const*) ;
 int bin_clear_free (int const*,size_t) ;
 int dpp_auth_fail (struct dpp_authentication*,char*) ;
 scalar_t__ dpp_check_attrs (int const*,size_t) ;
 int const* dpp_get_attr (int const*,size_t,int ,size_t*) ;
 int const* os_malloc (size_t) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

__attribute__((used)) static int dpp_auth_conf_rx_failure(struct dpp_authentication *auth,
        const u8 *hdr,
        const u8 *attr_start, size_t attr_len,
        const u8 *wrapped_data,
        u16 wrapped_data_len,
        enum dpp_status_error status)
{
 const u8 *addr[2];
 size_t len[2];
 u8 *unwrapped = ((void*)0);
 size_t unwrapped_len = 0;
 const u8 *r_nonce;
 u16 r_nonce_len;




 addr[0] = hdr;
 len[0] = DPP_HDR_LEN;
 addr[1] = attr_start;
 len[1] = attr_len;
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);
 wpa_hexdump(MSG_DEBUG, "DPP: AES-SIV ciphertext",
      wrapped_data, wrapped_data_len);
 unwrapped_len = wrapped_data_len - AES_BLOCK_SIZE;
 unwrapped = os_malloc(unwrapped_len);
 if (!unwrapped) {
  dpp_auth_fail(auth, "Authentication failed");
  goto fail;
 }
 if (aes_siv_decrypt(auth->k2, auth->curve->hash_len,
       wrapped_data, wrapped_data_len,
       2, addr, len, unwrapped) < 0) {
  dpp_auth_fail(auth, "AES-SIV decryption failed");
  goto fail;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: AES-SIV cleartext",
      unwrapped, unwrapped_len);

 if (dpp_check_attrs(unwrapped, unwrapped_len) < 0) {
  dpp_auth_fail(auth, "Invalid attribute in unwrapped data");
  goto fail;
 }

 r_nonce = dpp_get_attr(unwrapped, unwrapped_len, DPP_ATTR_R_NONCE,
          &r_nonce_len);
 if (!r_nonce || r_nonce_len != auth->curve->nonce_len) {
  dpp_auth_fail(auth, "DPP: Missing or invalid R-nonce");
  goto fail;
 }
 if (os_memcmp(r_nonce, auth->r_nonce, r_nonce_len) != 0) {
  wpa_hexdump(MSG_DEBUG, "DPP: Received R-nonce",
       r_nonce, r_nonce_len);
  wpa_hexdump(MSG_DEBUG, "DPP: Expected R-nonce",
       auth->r_nonce, r_nonce_len);
  dpp_auth_fail(auth, "R-nonce mismatch");
  goto fail;
 }

 if (status == DPP_STATUS_NOT_COMPATIBLE)
  dpp_auth_fail(auth, "Peer reported incompatible R-capab role");
 else if (status == DPP_STATUS_AUTH_FAILURE)
  dpp_auth_fail(auth, "Peer reported authentication failure)");

fail:
 bin_clear_free(unwrapped, unwrapped_len);
 return -1;
}
