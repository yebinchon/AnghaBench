
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_authentication {int net_access_key; int own_protocol_key; } ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int i2d_ECPrivateKey (int *,unsigned char**) ;
 int wpabuf_alloc_copy (unsigned char*,int) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void dpp_copy_netaccesskey(struct dpp_authentication *auth)
{
 unsigned char *der = ((void*)0);
 int der_len;
 EC_KEY *eckey;

 eckey = EVP_PKEY_get1_EC_KEY(auth->own_protocol_key);
 if (!eckey)
  return;

 der_len = i2d_ECPrivateKey(eckey, &der);
 if (der_len <= 0) {
  EC_KEY_free(eckey);
  return;
 }
 wpabuf_free(auth->net_access_key);
 auth->net_access_key = wpabuf_alloc_copy(der, der_len);
 OPENSSL_free(der);
 EC_KEY_free(eckey);
}
