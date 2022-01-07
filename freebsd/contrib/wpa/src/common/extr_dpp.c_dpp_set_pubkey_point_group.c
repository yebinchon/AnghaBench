
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int EVP_PKEY ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (int const*,size_t,int *) ;
 int BN_free (int *) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_new () ;
 int EC_KEY_set_asn1_flag (int *,int ) ;
 int EC_KEY_set_group (int *,int const*) ;
 int EC_KEY_set_public_key (int *,int *) ;
 int EC_POINT_free (int *) ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,int *) ;
 int EC_POINT_is_on_curve (int const*,int *,int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_POINT_set_affine_coordinates_GFp (int const*,int *,int *,int *,int *) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_EC_KEY (int *,int *) ;
 int MSG_ERROR ;
 int OPENSSL_EC_NAMED_CURVE ;
 int dpp_debug_print_point (char*,int const*,int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static EVP_PKEY * dpp_set_pubkey_point_group(const EC_GROUP *group,
          const u8 *buf_x, const u8 *buf_y,
          size_t len)
{
 EC_KEY *eckey = ((void*)0);
 BN_CTX *ctx;
 EC_POINT *point = ((void*)0);
 BIGNUM *x = ((void*)0), *y = ((void*)0);
 EVP_PKEY *pkey = ((void*)0);

 ctx = BN_CTX_new();
 if (!ctx) {
  wpa_printf(MSG_ERROR, "DPP: Out of memory");
  return ((void*)0);
 }

 point = EC_POINT_new(group);
 x = BN_bin2bn(buf_x, len, ((void*)0));
 y = BN_bin2bn(buf_y, len, ((void*)0));
 if (!point || !x || !y) {
  wpa_printf(MSG_ERROR, "DPP: Out of memory");
  goto fail;
 }

 if (!EC_POINT_set_affine_coordinates_GFp(group, point, x, y, ctx)) {
  wpa_printf(MSG_ERROR,
      "DPP: OpenSSL: EC_POINT_set_affine_coordinates_GFp failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

 if (!EC_POINT_is_on_curve(group, point, ctx) ||
     EC_POINT_is_at_infinity(group, point)) {
  wpa_printf(MSG_ERROR, "DPP: Invalid point");
  goto fail;
 }
 dpp_debug_print_point("DPP: dpp_set_pubkey_point_group", group, point);

 eckey = EC_KEY_new();
 if (!eckey ||
     EC_KEY_set_group(eckey, group) != 1 ||
     EC_KEY_set_public_key(eckey, point) != 1) {
  wpa_printf(MSG_ERROR,
      "DPP: Failed to set EC_KEY: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }
 EC_KEY_set_asn1_flag(eckey, OPENSSL_EC_NAMED_CURVE);

 pkey = EVP_PKEY_new();
 if (!pkey || EVP_PKEY_set1_EC_KEY(pkey, eckey) != 1) {
  wpa_printf(MSG_ERROR, "DPP: Could not create EVP_PKEY");
  goto fail;
 }

out:
 BN_free(x);
 BN_free(y);
 EC_KEY_free(eckey);
 EC_POINT_free(point);
 BN_CTX_free(ctx);
 return pkey;
fail:
 EVP_PKEY_free(pkey);
 pkey = ((void*)0);
 goto out;
}
