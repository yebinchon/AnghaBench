
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct dpp_pkex {int Mx; int identifier; void* x; int code; int own_mac; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int ike_group; } ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;
typedef int const EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int DPP_ATTR_CODE_IDENTIFIER ;
 int DPP_ATTR_ENCRYPTED_KEY ;
 int DPP_ATTR_FINITE_CYCLIC_GROUP ;
 int DPP_PA_PKEX_EXCHANGE_REQ ;
 scalar_t__ DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ ;
 scalar_t__ DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ ;
 scalar_t__ DPP_TEST_NO_FINITE_CYCLIC_GROUP_PKEX_EXCHANGE_REQ ;
 int EC_GROUP_free (int *) ;
 int EC_KEY_free (int *) ;
 int const* EC_KEY_get0_public_key (int *) ;
 int EC_POINT_add (int *,int const*,int const*,int const*,int *) ;
 int EC_POINT_free (int const*) ;
 int EC_POINT_get_affine_coordinates_GFp (int *,int const*,int *,int *,int *) ;
 int const* EC_POINT_new (int *) ;
 int * EVP_PKEY_get1_EC_KEY (void*) ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 struct wpabuf* dpp_alloc_msg (int ,size_t) ;
 scalar_t__ dpp_bn2bin_pad (int *,int ,int) ;
 int dpp_debug_print_point (char*,int *,int const*) ;
 void* dpp_gen_keypair (struct dpp_curve_params const*) ;
 int const* dpp_pkex_derive_Qi (struct dpp_curve_params const*,int ,int ,int ,int *,int **) ;
 int dpp_pkex_ephemeral_key_override ;
 scalar_t__ dpp_pkex_ephemeral_key_override_len ;
 void* dpp_set_keypair (struct dpp_curve_params const**,int ,scalar_t__) ;
 scalar_t__ dpp_test ;
 scalar_t__ dpp_test_gen_invalid_key (struct wpabuf*,struct dpp_curve_params const*) ;
 int os_strlen (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_str (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * dpp_pkex_build_exchange_req(struct dpp_pkex *pkex)
{
 EC_KEY *X_ec = ((void*)0);
 const EC_POINT *X_point;
 BN_CTX *bnctx = ((void*)0);
 EC_GROUP *group = ((void*)0);
 EC_POINT *Qi = ((void*)0), *M = ((void*)0);
 struct wpabuf *M_buf = ((void*)0);
 BIGNUM *Mx = ((void*)0), *My = ((void*)0);
 struct wpabuf *msg = ((void*)0);
 size_t attr_len;
 const struct dpp_curve_params *curve = pkex->own_bi->curve;

 wpa_printf(MSG_DEBUG, "DPP: Build PKEX Exchange Request");


 bnctx = BN_CTX_new();
 if (!bnctx)
  goto fail;
 Qi = dpp_pkex_derive_Qi(curve, pkex->own_mac, pkex->code,
    pkex->identifier, bnctx, &group);
 if (!Qi)
  goto fail;
 pkex->x = dpp_gen_keypair(curve);

 if (!pkex->x)
  goto fail;


 X_ec = EVP_PKEY_get1_EC_KEY(pkex->x);
 if (!X_ec)
  goto fail;
 X_point = EC_KEY_get0_public_key(X_ec);
 if (!X_point)
  goto fail;
 dpp_debug_print_point("DPP: X", group, X_point);
 M = EC_POINT_new(group);
 Mx = BN_new();
 My = BN_new();
 if (!M || !Mx || !My ||
     EC_POINT_add(group, M, X_point, Qi, bnctx) != 1 ||
     EC_POINT_get_affine_coordinates_GFp(group, M, Mx, My, bnctx) != 1)
  goto fail;
 dpp_debug_print_point("DPP: M", group, M);


 attr_len = 4 + 2;
 if (pkex->identifier)
  attr_len += 4 + os_strlen(pkex->identifier);
 attr_len += 4 + 2 * curve->prime_len;
 msg = dpp_alloc_msg(DPP_PA_PKEX_EXCHANGE_REQ, attr_len);
 if (!msg)
  goto fail;
 wpabuf_put_le16(msg, DPP_ATTR_FINITE_CYCLIC_GROUP);
 wpabuf_put_le16(msg, 2);
 wpabuf_put_le16(msg, curve->ike_group);






 if (pkex->identifier) {
  wpabuf_put_le16(msg, DPP_ATTR_CODE_IDENTIFIER);
  wpabuf_put_le16(msg, os_strlen(pkex->identifier));
  wpabuf_put_str(msg, pkex->identifier);
 }
 wpabuf_put_le16(msg, DPP_ATTR_ENCRYPTED_KEY);
 wpabuf_put_le16(msg, 2 * curve->prime_len);
 if (dpp_bn2bin_pad(Mx, wpabuf_put(msg, curve->prime_len),
      curve->prime_len) < 0 ||
     dpp_bn2bin_pad(Mx, pkex->Mx, curve->prime_len) < 0 ||
     dpp_bn2bin_pad(My, wpabuf_put(msg, curve->prime_len),
      curve->prime_len) < 0)
  goto fail;

out:
 wpabuf_free(M_buf);
 EC_KEY_free(X_ec);
 EC_POINT_free(M);
 EC_POINT_free(Qi);
 BN_clear_free(Mx);
 BN_clear_free(My);
 BN_CTX_free(bnctx);
 EC_GROUP_free(group);
 return msg;
fail:
 wpa_printf(MSG_INFO, "DPP: Failed to build PKEX Exchange Request");
 wpabuf_free(msg);
 msg = ((void*)0);
 goto out;
}
