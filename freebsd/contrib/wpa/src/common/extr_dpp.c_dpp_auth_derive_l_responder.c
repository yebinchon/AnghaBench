
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpp_authentication {int secret_len; int Lx_len; int Lx; int own_protocol_key; TYPE_2__* own_bi; TYPE_1__* peer_bi; } ;
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
 int BN_free (int *) ;
 int BN_mod_add (int *,int const*,int const*,int *,int *) ;
 int * BN_new () ;
 int EC_GROUP_get_order (int const*,int *,int *) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_private_key (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int EC_POINT_clear_free (int *) ;
 int EC_POINT_get_affine_coordinates_GFp (int const*,int *,int *,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int *,int const*,int *,int *) ;
 int * EC_POINT_new (int const*) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int * EVP_PKEY_get1_EC_KEY (int ) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ dpp_bn2bin_pad (int *,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int dpp_auth_derive_l_responder(struct dpp_authentication *auth)
{
 const EC_GROUP *group;
 EC_POINT *l = ((void*)0);
 EC_KEY *BI = ((void*)0), *bR = ((void*)0), *pR = ((void*)0);
 const EC_POINT *BI_point;
 BN_CTX *bnctx;
 BIGNUM *lx, *sum, *q;
 const BIGNUM *bR_bn, *pR_bn;
 int ret = -1;



 bnctx = BN_CTX_new();
 sum = BN_new();
 q = BN_new();
 lx = BN_new();
 if (!bnctx || !sum || !q || !lx)
  goto fail;
 BI = EVP_PKEY_get1_EC_KEY(auth->peer_bi->pubkey);
 if (!BI)
  goto fail;
 BI_point = EC_KEY_get0_public_key(BI);
 group = EC_KEY_get0_group(BI);
 if (!group)
  goto fail;

 bR = EVP_PKEY_get1_EC_KEY(auth->own_bi->pubkey);
 pR = EVP_PKEY_get1_EC_KEY(auth->own_protocol_key);
 if (!bR || !pR)
  goto fail;
 bR_bn = EC_KEY_get0_private_key(bR);
 pR_bn = EC_KEY_get0_private_key(pR);
 if (!bR_bn || !pR_bn)
  goto fail;
 if (EC_GROUP_get_order(group, q, bnctx) != 1 ||
     BN_mod_add(sum, bR_bn, pR_bn, q, bnctx) != 1)
  goto fail;
 l = EC_POINT_new(group);
 if (!l ||
     EC_POINT_mul(group, l, ((void*)0), BI_point, sum, bnctx) != 1 ||
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
 EC_KEY_free(BI);
 EC_KEY_free(bR);
 EC_KEY_free(pR);
 BN_clear_free(lx);
 BN_clear_free(sum);
 BN_free(q);
 BN_CTX_free(bnctx);
 return ret;
}
