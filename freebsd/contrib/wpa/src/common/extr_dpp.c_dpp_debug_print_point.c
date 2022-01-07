
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 char* BN_bn2hex (int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int EC_POINT_get_affine_coordinates_GFp (int const*,int const*,int *,int *,int *) ;
 int MSG_DEBUG ;
 int OPENSSL_free (char*) ;
 int wpa_debug_show_keys ;
 int wpa_printf (int ,char*,char const*,char*,char*) ;

__attribute__((used)) static void dpp_debug_print_point(const char *title, const EC_GROUP *group,
      const EC_POINT *point)
{
 BIGNUM *x, *y;
 BN_CTX *ctx;
 char *x_str = ((void*)0), *y_str = ((void*)0);

 if (!wpa_debug_show_keys)
  return;

 ctx = BN_CTX_new();
 x = BN_new();
 y = BN_new();
 if (!ctx || !x || !y ||
     EC_POINT_get_affine_coordinates_GFp(group, point, x, y, ctx) != 1)
  goto fail;

 x_str = BN_bn2hex(x);
 y_str = BN_bn2hex(y);
 if (!x_str || !y_str)
  goto fail;

 wpa_printf(MSG_DEBUG, "%s (%s,%s)", title, x_str, y_str);

fail:
 OPENSSL_free(x_str);
 OPENSSL_free(y_str);
 BN_free(x);
 BN_free(y);
 BN_CTX_free(ctx);
}
