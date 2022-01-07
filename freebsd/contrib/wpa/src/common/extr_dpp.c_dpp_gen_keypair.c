
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_curve_params {int name; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int EC_KEY_set_asn1_flag (int *,int ) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_keygen (int *,int **) ;
 int EVP_PKEY_keygen_init (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_EC_KEY (int *,int *) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int NID_undef ;
 int OBJ_txt2nid (int ) ;
 int OPENSSL_EC_NAMED_CURVE ;
 int dpp_debug_print_key (char*,int *) ;
 scalar_t__ wpa_debug_show_keys ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static EVP_PKEY * dpp_gen_keypair(const struct dpp_curve_params *curve)
{
 EVP_PKEY_CTX *kctx = ((void*)0);
 EC_KEY *ec_params = ((void*)0);
 EVP_PKEY *params = ((void*)0), *key = ((void*)0);
 int nid;

 wpa_printf(MSG_DEBUG, "DPP: Generating a keypair");

 nid = OBJ_txt2nid(curve->name);
 if (nid == NID_undef) {
  wpa_printf(MSG_INFO, "DPP: Unsupported curve %s", curve->name);
  return ((void*)0);
 }

 ec_params = EC_KEY_new_by_curve_name(nid);
 if (!ec_params) {
  wpa_printf(MSG_ERROR,
      "DPP: Failed to generate EC_KEY parameters");
  goto fail;
 }
 EC_KEY_set_asn1_flag(ec_params, OPENSSL_EC_NAMED_CURVE);
 params = EVP_PKEY_new();
 if (!params || EVP_PKEY_set1_EC_KEY(params, ec_params) != 1) {
  wpa_printf(MSG_ERROR,
      "DPP: Failed to generate EVP_PKEY parameters");
  goto fail;
 }

 kctx = EVP_PKEY_CTX_new(params, ((void*)0));
 if (!kctx ||
     EVP_PKEY_keygen_init(kctx) != 1 ||
     EVP_PKEY_keygen(kctx, &key) != 1) {
  wpa_printf(MSG_ERROR, "DPP: Failed to generate EC key");
  key = ((void*)0);
  goto fail;
 }

 if (wpa_debug_show_keys)
  dpp_debug_print_key("Own generated key", key);

fail:
 EC_KEY_free(ec_params);
 EVP_PKEY_free(params);
 EVP_PKEY_CTX_free(kctx);
 return key;
}
