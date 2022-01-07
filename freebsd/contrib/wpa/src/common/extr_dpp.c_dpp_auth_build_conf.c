
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int const* r_nonce; TYPE_3__* curve; int k2; int ke; TYPE_2__* own_bi; TYPE_1__* peer_bi; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_6__ {int hash_len; int nonce_len; } ;
struct TYPE_5__ {int* pubkey_hash; } ;
struct TYPE_4__ {int* pubkey_hash; } ;


 int AES_BLOCK_SIZE ;
 int DPP_ATTR_I_AUTH_TAG ;
 int DPP_ATTR_R_NONCE ;
 size_t DPP_ATTR_WRAPPED_DATA ;
 int DPP_MAX_HASH_LEN ;
 int DPP_MAX_NONCE_LEN ;
 int DPP_PA_AUTHENTICATION_CONF ;
 int DPP_STATUS_OK ;
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_AUTH_CONF ;
 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_CONF ;
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_CONF ;
 scalar_t__ DPP_TEST_INVALID_STATUS_AUTH_CONF ;
 scalar_t__ DPP_TEST_I_AUTH_MISMATCH_AUTH_CONF ;
 scalar_t__ DPP_TEST_NO_I_AUTH_AUTH_CONF ;
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_CONF ;
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_CONF ;
 scalar_t__ DPP_TEST_NO_STATUS_AUTH_CONF ;
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_AUTH_CONF ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int WPA_PUT_LE16 (int*,int) ;
 scalar_t__ aes_siv_encrypt (int ,int,int*,size_t,int,int const**,size_t*,int*) ;
 struct wpabuf* dpp_alloc_msg (int ,size_t) ;
 int dpp_auth_success (struct dpp_authentication*) ;
 int dpp_build_attr_i_bootstrap_key_hash (struct wpabuf*,int const*) ;
 int dpp_build_attr_r_bootstrap_key_hash (struct wpabuf*,int const*) ;
 int dpp_build_attr_status (struct wpabuf*,int) ;
 scalar_t__ dpp_gen_i_auth (struct dpp_authentication*,int*) ;
 scalar_t__ dpp_test ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int* wpabuf_head_u8 (struct wpabuf*) ;
 int* wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,size_t) ;

__attribute__((used)) static struct wpabuf * dpp_auth_build_conf(struct dpp_authentication *auth,
        enum dpp_status_error status)
{
 struct wpabuf *msg;
 u8 i_auth[4 + DPP_MAX_HASH_LEN];
 size_t i_auth_len;
 u8 r_nonce[4 + DPP_MAX_NONCE_LEN];
 size_t r_nonce_len;
 const u8 *addr[2];
 size_t len[2], attr_len;
 u8 *wrapped_i_auth;
 u8 *wrapped_r_nonce;
 u8 *attr_start, *attr_end;
 const u8 *r_pubkey_hash, *i_pubkey_hash;




 wpa_printf(MSG_DEBUG, "DPP: Build Authentication Confirmation");

 i_auth_len = 4 + auth->curve->hash_len;
 r_nonce_len = 4 + auth->curve->nonce_len;

 attr_len = 4 + 1 + 2 * (4 + SHA256_MAC_LEN) +
  4 + i_auth_len + r_nonce_len + AES_BLOCK_SIZE;




 msg = dpp_alloc_msg(DPP_PA_AUTHENTICATION_CONF, attr_len);
 if (!msg)
  goto fail;

 attr_start = wpabuf_put(msg, 0);

 r_pubkey_hash = auth->peer_bi->pubkey_hash;
 if (auth->own_bi)
  i_pubkey_hash = auth->own_bi->pubkey_hash;
 else
  i_pubkey_hash = ((void*)0);
 dpp_build_attr_status(msg, status);
 dpp_build_attr_r_bootstrap_key_hash(msg, r_pubkey_hash);


 dpp_build_attr_i_bootstrap_key_hash(msg, i_pubkey_hash);
 attr_end = wpabuf_put(msg, 0);


 addr[0] = wpabuf_head_u8(msg) + 2;
 len[0] = 3 + 1 + 1 + 1;
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);


 addr[1] = attr_start;
 len[1] = attr_end - attr_start;
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);

 if (status == DPP_STATUS_OK) {

  wpabuf_put_le16(msg, DPP_ATTR_WRAPPED_DATA);
  wpabuf_put_le16(msg, i_auth_len + AES_BLOCK_SIZE);
  wrapped_i_auth = wpabuf_put(msg, i_auth_len + AES_BLOCK_SIZE);
  WPA_PUT_LE16(i_auth, DPP_ATTR_I_AUTH_TAG);
  WPA_PUT_LE16(&i_auth[2], auth->curve->hash_len);
  if (dpp_gen_i_auth(auth, i_auth + 4) < 0)
   goto fail;
  if (aes_siv_encrypt(auth->ke, auth->curve->hash_len,
        i_auth, i_auth_len,
        2, addr, len, wrapped_i_auth) < 0)
   goto fail;
  wpa_hexdump(MSG_DEBUG, "DPP: {I-auth}ke",
       wrapped_i_auth, i_auth_len + AES_BLOCK_SIZE);
 } else {

  wpabuf_put_le16(msg, DPP_ATTR_WRAPPED_DATA);
  wpabuf_put_le16(msg, r_nonce_len + AES_BLOCK_SIZE);
  wrapped_r_nonce = wpabuf_put(msg, r_nonce_len + AES_BLOCK_SIZE);

  WPA_PUT_LE16(r_nonce, DPP_ATTR_R_NONCE);
  WPA_PUT_LE16(&r_nonce[2], auth->curve->nonce_len);
  os_memcpy(r_nonce + 4, auth->r_nonce, auth->curve->nonce_len);

  if (aes_siv_encrypt(auth->k2, auth->curve->hash_len,
        r_nonce, r_nonce_len,
        2, addr, len, wrapped_r_nonce) < 0)
   goto fail;
  wpa_hexdump(MSG_DEBUG, "DPP: {R-nonce}k2",
       wrapped_r_nonce, r_nonce_len + AES_BLOCK_SIZE);
 }
 wpa_hexdump_buf(MSG_DEBUG,
   "DPP: Authentication Confirmation frame attributes",
   msg);
 if (status == DPP_STATUS_OK)
  dpp_auth_success(auth);

 return msg;

fail:
 wpabuf_free(msg);
 return ((void*)0);
}
