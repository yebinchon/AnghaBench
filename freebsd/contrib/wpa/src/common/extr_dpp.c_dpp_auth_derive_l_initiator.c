
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpp_authentication {int secret_len; int Lx_len; int Lx; TYPE_2__* own_bi; int peer_protocol_key; TYPE_1__* peer_bi; } ;
struct TYPE_4__ {int pubkey; } ;
struct TYPE_3__ {int pubkey; } ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_private_key (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int EC_POINT_add (int const*,int *,int const*,int const*,int *) ;
 int EC_POINT_clear_free (int *) ;
 int EC_POINT_get_affine_coordinates_GFp (int const*,int *,int *,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int *,int *,int const*,int *) ;
 int * EC_POINT_new (int const*) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int * EVP_PKEY_get1_EC_KEY (int ) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ dpp_bn2bin_pad (int *,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int dpp_auth_derive_l_initiator(struct dpp_authentication *auth)
{
 const EC_GROUP *group;
 EC_POINT *l = ((void*)0), *sum = ((void*)0);
 EC_KEY *bI = ((void*)0), *BR = ((void*)0), *PR = ((void*)0);
 const EC_POINT *BR_point, *PR_point;
 BN_CTX *bnctx;
 BIGNUM *lx;
 const BIGNUM *bI_bn;
 int ret = -1;



 bnctx = BN_CTX_new();
 lx = BN_new();
 if (!bnctx || !lx)
  goto fail;
 BR = EVP_PKEY_get1_EC_KEY(auth->peer_bi->pubkey);
 PR = EVP_PKEY_get1_EC_KEY(auth->peer_protocol_key);
 if (!BR || !PR)
  goto fail;
 BR_point = EC_KEY_get0_public_key(BR);
 PR_point = EC_KEY_get0_public_key(PR);

 bI = EVP_PKEY_get1_EC_KEY(auth->own_bi->pubkey);
 if (!bI)
  goto fail;
 group = EC_KEY_get0_group(bI);
 bI_bn = EC_KEY_get0_private_key(bI);
 if (!group || !bI_bn)
  goto fail;
 sum = EC_POINT_new(group);
 l = EC_POINT_new(group);
 if (!sum || !l ||
     EC_POINT_add(group, sum, BR_point, PR_point, bnctx) != 1 ||
     EC_POINT_mul(group, l, ((void*)0), sum, bI_bn, bnctx) != 1 ||
     EC_POINT_get_affine_coordinates_GFp(group, l, lx, ((void*)0),
      bnctx) != 1) {
  wpa_printf(MSG_ERROR,
      "OpenSSL: failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

 if (dpp_bn2bin_pad(lx, auth->Lx, auth->secret_len) < 0)
  goto fail;
 wpa_hexdump_key(MSG_DEBUG, "DPP: L.x", auth->Lx, auth->secret_len);
 auth->Lx_len = auth->secret_len;
 ret = 0;
fail:
 EC_POINT_clear_free(l);
 EC_POINT_clear_free(sum);
 EC_KEY_free(bI);
 EC_KEY_free(BR);
 EC_KEY_free(PR);
 BN_clear_free(lx);
 BN_CTX_free(bnctx);
 return ret;
}
