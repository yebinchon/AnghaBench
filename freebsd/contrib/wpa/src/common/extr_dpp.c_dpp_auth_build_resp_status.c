
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int* i_nonce; struct wpabuf* resp_msg; int k1; TYPE_3__* curve; TYPE_2__* peer_bi; TYPE_1__* own_bi; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_6__ {int nonce_len; } ;
struct TYPE_5__ {int* pubkey_hash; } ;
struct TYPE_4__ {int* pubkey_hash; } ;


 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_I_NONCE_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ;
 scalar_t__ DPP_TEST_NO_STATUS_AUTH_RESP ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 struct wpabuf* dpp_auth_build_resp (struct dpp_authentication*,int,int *,int ,int const*,int const*,int *,int const*,int *,int ,int ) ;
 scalar_t__ dpp_test ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int dpp_auth_build_resp_status(struct dpp_authentication *auth,
          enum dpp_status_error status)
{
 struct wpabuf *msg;
 const u8 *r_pubkey_hash, *i_pubkey_hash, *i_nonce;




 if (!auth->own_bi)
  return -1;
 wpa_printf(MSG_DEBUG, "DPP: Build Authentication Response");

 r_pubkey_hash = auth->own_bi->pubkey_hash;
 if (auth->peer_bi)
  i_pubkey_hash = auth->peer_bi->pubkey_hash;
 else
  i_pubkey_hash = ((void*)0);

 i_nonce = auth->i_nonce;
 msg = dpp_auth_build_resp(auth, status, ((void*)0), auth->curve->nonce_len,
      r_pubkey_hash, i_pubkey_hash,
      ((void*)0), i_nonce, ((void*)0), 0, auth->k1);
 if (!msg)
  return -1;
 wpabuf_free(auth->resp_msg);
 auth->resp_msg = msg;
 return 0;
}
