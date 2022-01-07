
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct hostapd_hw_modes {int dummy; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_bootstrap_info {int* pubkey_hash; int pubkey; TYPE_1__* curve; } ;
struct dpp_authentication {int initiator; int waiting_auth_resp; int allowed_roles; int configurator; int* i_nonce; size_t secret_len; size_t Mx_len; int req_msg; TYPE_1__* curve; struct dpp_bootstrap_info* own_bi; struct dpp_bootstrap_info* peer_bi; int k1; int Mx; void* own_protocol_key; void* msg_ctx; } ;
struct TYPE_3__ {size_t nonce_len; int prime_len; int hash_len; } ;


 int DPP_CAPAB_CONFIGURATOR ;
 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_REQ ;
 scalar_t__ DPP_TEST_INVALID_I_PROTO_KEY_AUTH_REQ ;
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_REQ ;
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_REQ ;
 scalar_t__ DPP_TEST_NO_I_PROTO_KEY_AUTH_REQ ;
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_REQ ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int dpp_auth_build_req (struct dpp_authentication*,struct wpabuf*,size_t,int const*,int const*,unsigned int) ;
 int dpp_auth_deinit (struct dpp_authentication*) ;
 scalar_t__ dpp_autogen_bootstrap_key (struct dpp_authentication*) ;
 scalar_t__ dpp_derive_k1 (int ,size_t,int ,int ) ;
 scalar_t__ dpp_ecdh (void*,int ,int ,size_t*) ;
 void* dpp_gen_keypair (TYPE_1__*) ;
 struct wpabuf* dpp_get_pubkey_point (void*,int ) ;
 int const* dpp_nonce_override ;
 size_t dpp_nonce_override_len ;
 scalar_t__ dpp_prepare_channel_list (struct dpp_authentication*,struct hostapd_hw_modes*,int ) ;
 int dpp_protocol_key_override ;
 scalar_t__ dpp_protocol_key_override_len ;
 void* dpp_set_keypair (struct dpp_curve_params const**,int ,scalar_t__) ;
 scalar_t__ dpp_test ;
 scalar_t__ dpp_test_gen_invalid_key (struct wpabuf*,TYPE_1__*) ;
 int os_memcpy (int*,int const*,int) ;
 struct dpp_authentication* os_zalloc (int) ;
 scalar_t__ random_get_bytes (int*,size_t) ;
 int wpa_hexdump (int ,char*,int*,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,size_t) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;

struct dpp_authentication * dpp_auth_init(void *msg_ctx,
       struct dpp_bootstrap_info *peer_bi,
       struct dpp_bootstrap_info *own_bi,
       u8 dpp_allowed_roles,
       unsigned int neg_freq,
       struct hostapd_hw_modes *own_modes,
       u16 num_modes)
{
 struct dpp_authentication *auth;
 size_t nonce_len;
 size_t secret_len;
 struct wpabuf *pi = ((void*)0);
 const u8 *r_pubkey_hash, *i_pubkey_hash;




 auth = os_zalloc(sizeof(*auth));
 if (!auth)
  return ((void*)0);
 auth->msg_ctx = msg_ctx;
 auth->initiator = 1;
 auth->waiting_auth_resp = 1;
 auth->allowed_roles = dpp_allowed_roles;
 auth->configurator = !!(dpp_allowed_roles & DPP_CAPAB_CONFIGURATOR);
 auth->peer_bi = peer_bi;
 auth->own_bi = own_bi;
 auth->curve = peer_bi->curve;

 if (dpp_autogen_bootstrap_key(auth) < 0 ||
     dpp_prepare_channel_list(auth, own_modes, num_modes) < 0)
  goto fail;
 nonce_len = auth->curve->nonce_len;
 if (random_get_bytes(auth->i_nonce, nonce_len)) {
  wpa_printf(MSG_ERROR, "DPP: Failed to generate I-nonce");
  goto fail;
 }

 wpa_hexdump(MSG_DEBUG, "DPP: I-nonce", auth->i_nonce, nonce_len);
 auth->own_protocol_key = dpp_gen_keypair(auth->curve);

 if (!auth->own_protocol_key)
  goto fail;

 pi = dpp_get_pubkey_point(auth->own_protocol_key, 0);
 if (!pi)
  goto fail;


 if (dpp_ecdh(auth->own_protocol_key, auth->peer_bi->pubkey,
       auth->Mx, &secret_len) < 0)
  goto fail;
 auth->secret_len = secret_len;

 wpa_hexdump_key(MSG_DEBUG, "DPP: ECDH shared secret (M.x)",
   auth->Mx, auth->secret_len);
 auth->Mx_len = auth->secret_len;

 if (dpp_derive_k1(auth->Mx, auth->secret_len, auth->k1,
     auth->curve->hash_len) < 0)
  goto fail;

 r_pubkey_hash = auth->peer_bi->pubkey_hash;
 i_pubkey_hash = auth->own_bi->pubkey_hash;
 auth->req_msg = dpp_auth_build_req(auth, pi, nonce_len, r_pubkey_hash,
        i_pubkey_hash, neg_freq);
 if (!auth->req_msg)
  goto fail;

out:
 wpabuf_free(pi);
 return auth;
fail:
 dpp_auth_deinit(auth);
 auth = ((void*)0);
 goto out;
}
