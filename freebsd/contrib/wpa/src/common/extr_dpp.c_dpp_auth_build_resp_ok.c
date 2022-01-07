
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {int* r_nonce; int* i_nonce; struct wpabuf* resp_msg; int k2; TYPE_3__* curve; TYPE_2__* peer_bi; TYPE_1__* own_bi; int ke; int secret_len; int Nx; int Nx_len; int peer_protocol_key; void* own_protocol_key; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_7__ {size_t nonce_len; int hash_len; int prime_len; } ;
struct TYPE_6__ {int* pubkey_hash; } ;
struct TYPE_5__ {int* pubkey_hash; } ;


 int AES_BLOCK_SIZE ;
 int DPP_ATTR_R_AUTH_TAG ;
 int DPP_MAX_HASH_LEN ;
 int DPP_STATUS_OK ;
 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_INVALID_R_PROTO_KEY_AUTH_RESP ;
 scalar_t__ DPP_TEST_INVALID_STATUS_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_I_NONCE_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_R_AUTH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_R_NONCE_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_R_PROTO_KEY_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_STATUS_AUTH_RESP ;
 scalar_t__ DPP_TEST_R_AUTH_MISMATCH_AUTH_RESP ;
 int EVP_PKEY_free (void*) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int WPA_PUT_LE16 (int*,int) ;
 scalar_t__ aes_siv_encrypt (int ,int,int*,int,int ,int *,int *,int*) ;
 struct wpabuf* dpp_auth_build_resp (struct dpp_authentication*,int,struct wpabuf*,size_t,int const*,int const*,int const*,int const*,int*,size_t,int ) ;
 scalar_t__ dpp_auth_derive_l_responder (struct dpp_authentication*) ;
 scalar_t__ dpp_derive_k2 (int ,int ,int ,int) ;
 scalar_t__ dpp_derive_ke (struct dpp_authentication*,int ,int) ;
 scalar_t__ dpp_ecdh (void*,int ,int ,size_t*) ;
 void* dpp_gen_keypair (TYPE_3__*) ;
 scalar_t__ dpp_gen_r_auth (struct dpp_authentication*,int*) ;
 struct wpabuf* dpp_get_pubkey_point (void*,int ) ;
 int const* dpp_nonce_override ;
 size_t dpp_nonce_override_len ;
 int dpp_protocol_key_override ;
 scalar_t__ dpp_protocol_key_override_len ;
 void* dpp_set_keypair (struct dpp_curve_params const**,int ,scalar_t__) ;
 scalar_t__ dpp_test ;
 scalar_t__ dpp_test_gen_invalid_key (struct wpabuf*,TYPE_3__*) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 scalar_t__ random_get_bytes (int*,size_t) ;
 int wpa_hexdump (int ,char*,int*,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int dpp_auth_build_resp_ok(struct dpp_authentication *auth)
{
 size_t nonce_len;
 size_t secret_len;
 struct wpabuf *msg, *pr = ((void*)0);
 u8 r_auth[4 + DPP_MAX_HASH_LEN];
 u8 wrapped_r_auth[4 + DPP_MAX_HASH_LEN + AES_BLOCK_SIZE], *w_r_auth;
 size_t wrapped_r_auth_len;
 int ret = -1;
 const u8 *r_pubkey_hash, *i_pubkey_hash, *r_nonce, *i_nonce;
 enum dpp_status_error status = DPP_STATUS_OK;




 wpa_printf(MSG_DEBUG, "DPP: Build Authentication Response");
 if (!auth->own_bi)
  return -1;
 nonce_len = auth->curve->nonce_len;
 if (random_get_bytes(auth->r_nonce, nonce_len)) {
  wpa_printf(MSG_ERROR, "DPP: Failed to generate R-nonce");
  goto fail;
 }

 wpa_hexdump(MSG_DEBUG, "DPP: R-nonce", auth->r_nonce, nonce_len);

 EVP_PKEY_free(auth->own_protocol_key);
 auth->own_protocol_key = dpp_gen_keypair(auth->curve);

 if (!auth->own_protocol_key)
  goto fail;

 pr = dpp_get_pubkey_point(auth->own_protocol_key, 0);
 if (!pr)
  goto fail;


 if (dpp_ecdh(auth->own_protocol_key, auth->peer_protocol_key,
       auth->Nx, &secret_len) < 0)
  goto fail;

 wpa_hexdump_key(MSG_DEBUG, "DPP: ECDH shared secret (N.x)",
   auth->Nx, auth->secret_len);
 auth->Nx_len = auth->secret_len;

 if (dpp_derive_k2(auth->Nx, auth->secret_len, auth->k2,
     auth->curve->hash_len) < 0)
  goto fail;

 if (auth->own_bi && auth->peer_bi) {

  if (dpp_auth_derive_l_responder(auth) < 0)
   goto fail;
 }

 if (dpp_derive_ke(auth, auth->ke, auth->curve->hash_len) < 0)
  goto fail;


 WPA_PUT_LE16(r_auth, DPP_ATTR_R_AUTH_TAG);
 WPA_PUT_LE16(&r_auth[2], auth->curve->hash_len);
 if (dpp_gen_r_auth(auth, r_auth + 4) < 0)
  goto fail;






 if (aes_siv_encrypt(auth->ke, auth->curve->hash_len,
       r_auth, 4 + auth->curve->hash_len,
       0, ((void*)0), ((void*)0), wrapped_r_auth) < 0)
  goto fail;
 wrapped_r_auth_len = 4 + auth->curve->hash_len + AES_BLOCK_SIZE;
 wpa_hexdump(MSG_DEBUG, "DPP: {R-auth}ke",
      wrapped_r_auth, wrapped_r_auth_len);
 w_r_auth = wrapped_r_auth;

 r_pubkey_hash = auth->own_bi->pubkey_hash;
 if (auth->peer_bi)
  i_pubkey_hash = auth->peer_bi->pubkey_hash;
 else
  i_pubkey_hash = ((void*)0);

 i_nonce = auth->i_nonce;
 r_nonce = auth->r_nonce;
 msg = dpp_auth_build_resp(auth, status, pr, nonce_len,
      r_pubkey_hash, i_pubkey_hash,
      r_nonce, i_nonce,
      w_r_auth, wrapped_r_auth_len,
      auth->k2);
 if (!msg)
  goto fail;
 wpabuf_free(auth->resp_msg);
 auth->resp_msg = msg;
 ret = 0;
fail:
 wpabuf_free(pr);
 return ret;
}
