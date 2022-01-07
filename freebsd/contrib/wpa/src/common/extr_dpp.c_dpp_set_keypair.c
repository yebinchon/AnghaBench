
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpp_curve_params {int dummy; } ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_GROUP_get_curve_name (int const*) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int MSG_INFO ;
 int * d2i_ECPrivateKey (int *,int const**,size_t) ;
 struct dpp_curve_params* dpp_get_curve_nid (int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static EVP_PKEY * dpp_set_keypair(const struct dpp_curve_params **curve,
      const u8 *privkey, size_t privkey_len)
{
 EVP_PKEY *pkey;
 EC_KEY *eckey;
 const EC_GROUP *group;
 int nid;

 pkey = EVP_PKEY_new();
 if (!pkey)
  return ((void*)0);
 eckey = d2i_ECPrivateKey(((void*)0), &privkey, privkey_len);
 if (!eckey) {
  wpa_printf(MSG_INFO,
      "DPP: OpenSSL: d2i_ECPrivateKey() failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  EVP_PKEY_free(pkey);
  return ((void*)0);
 }
 group = EC_KEY_get0_group(eckey);
 if (!group) {
  EC_KEY_free(eckey);
  EVP_PKEY_free(pkey);
  return ((void*)0);
 }
 nid = EC_GROUP_get_curve_name(group);
 *curve = dpp_get_curve_nid(nid);
 if (!*curve) {
  wpa_printf(MSG_INFO,
      "DPP: Unsupported curve (nid=%d) in pre-assigned key",
      nid);
  EC_KEY_free(eckey);
  EVP_PKEY_free(pkey);
  return ((void*)0);
 }

 if (EVP_PKEY_assign_EC_KEY(pkey, eckey) != 1) {
  EC_KEY_free(eckey);
  EVP_PKEY_free(pkey);
  return ((void*)0);
 }
 return pkey;
}
