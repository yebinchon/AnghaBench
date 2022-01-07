
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int EVP_CIPHER_CTX ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_EncryptUpdate (int *,int *,int*,int const*,int) ;
 int MSG_ERROR ;
 int wpa_printf (int ,char*,int ) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 EVP_CIPHER_CTX *c = ctx;
 int clen = 16;
 if (EVP_EncryptUpdate(c, crypt, &clen, plain, 16) != 1) {
  wpa_printf(MSG_ERROR, "OpenSSL: EVP_EncryptUpdate failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  return -1;
 }
 return 0;
}
