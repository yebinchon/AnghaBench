
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_DigestFinal (int *,int *,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,int const*,size_t const) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int MSG_ERROR ;
 scalar_t__ TEST_FAIL () ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int openssl_digest_vector(const EVP_MD *type, size_t num_elem,
     const u8 *addr[], const size_t *len, u8 *mac)
{
 EVP_MD_CTX *ctx;
 size_t i;
 unsigned int mac_len;

 if (TEST_FAIL())
  return -1;

 ctx = EVP_MD_CTX_new();
 if (!ctx)
  return -1;
 if (!EVP_DigestInit_ex(ctx, type, ((void*)0))) {
  wpa_printf(MSG_ERROR, "OpenSSL: EVP_DigestInit_ex failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  EVP_MD_CTX_free(ctx);
  return -1;
 }
 for (i = 0; i < num_elem; i++) {
  if (!EVP_DigestUpdate(ctx, addr[i], len[i])) {
   wpa_printf(MSG_ERROR, "OpenSSL: EVP_DigestUpdate "
       "failed: %s",
       ERR_error_string(ERR_get_error(), ((void*)0)));
   EVP_MD_CTX_free(ctx);
   return -1;
  }
 }
 if (!EVP_DigestFinal(ctx, mac, &mac_len)) {
  wpa_printf(MSG_ERROR, "OpenSSL: EVP_DigestFinal failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  EVP_MD_CTX_free(ctx);
  return -1;
 }
 EVP_MD_CTX_free(ctx);

 return 0;
}
