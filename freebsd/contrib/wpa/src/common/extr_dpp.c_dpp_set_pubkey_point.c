
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int MSG_ERROR ;
 int * dpp_set_pubkey_point_group (int const*,int const*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static EVP_PKEY * dpp_set_pubkey_point(EVP_PKEY *group_key,
           const u8 *buf, size_t len)
{
 EC_KEY *eckey;
 const EC_GROUP *group;
 EVP_PKEY *pkey = ((void*)0);

 if (len & 1)
  return ((void*)0);

 eckey = EVP_PKEY_get1_EC_KEY(group_key);
 if (!eckey) {
  wpa_printf(MSG_ERROR,
      "DPP: Could not get EC_KEY from group_key");
  return ((void*)0);
 }

 group = EC_KEY_get0_group(eckey);
 if (group)
  pkey = dpp_set_pubkey_point_group(group, buf, buf + len / 2,
        len / 2);
 else
  wpa_printf(MSG_ERROR, "DPP: Could not get EC group");

 EC_KEY_free(eckey);
 return pkey;
}
