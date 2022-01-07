
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_EncryptFinal_ex (int *,int *,int*) ;
 int EVP_EncryptInit_ex (int *,int ,int *,int const*,int const*) ;
 int EVP_EncryptUpdate (int *,int *,int*,int *,size_t) ;
 int EVP_aes_128_cbc () ;
 scalar_t__ TEST_FAIL () ;

int aes_128_cbc_encrypt(const u8 *key, const u8 *iv, u8 *data, size_t data_len)
{
 EVP_CIPHER_CTX *ctx;
 int clen, len;
 u8 buf[16];
 int res = -1;

 if (TEST_FAIL())
  return -1;

 ctx = EVP_CIPHER_CTX_new();
 if (!ctx)
  return -1;
 clen = data_len;
 len = sizeof(buf);
 if (EVP_EncryptInit_ex(ctx, EVP_aes_128_cbc(), ((void*)0), key, iv) == 1 &&
     EVP_CIPHER_CTX_set_padding(ctx, 0) == 1 &&
     EVP_EncryptUpdate(ctx, data, &clen, data, data_len) == 1 &&
     clen == (int) data_len &&
     EVP_EncryptFinal_ex(ctx, buf, &len) == 1 && len == 0)
  res = 0;
 EVP_CIPHER_CTX_free(ctx);

 return res;
}
