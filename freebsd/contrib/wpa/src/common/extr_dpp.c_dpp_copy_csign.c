
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_authentication {int c_sign_key; } ;
typedef int EVP_PKEY ;


 int OPENSSL_free (unsigned char*) ;
 int i2d_PUBKEY (int *,unsigned char**) ;
 int wpabuf_alloc_copy (unsigned char*,int) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void dpp_copy_csign(struct dpp_authentication *auth, EVP_PKEY *csign)
{
 unsigned char *der = ((void*)0);
 int der_len;

 der_len = i2d_PUBKEY(csign, &der);
 if (der_len <= 0)
  return;
 wpabuf_free(auth->c_sign_key);
 auth->c_sign_key = wpabuf_alloc_copy(der, der_len);
 OPENSSL_free(der);
}
