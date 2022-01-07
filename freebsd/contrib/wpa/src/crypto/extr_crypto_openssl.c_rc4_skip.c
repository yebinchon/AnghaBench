
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int skip_buf ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_key_length (int *,size_t) ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_CipherInit_ex (int *,int *,int *,unsigned char const*,int *,int) ;
 scalar_t__ EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char*,size_t) ;
 int * EVP_rc4 () ;

int rc4_skip(const u8 *key, size_t keylen, size_t skip,
      u8 *data, size_t data_len)
{



 EVP_CIPHER_CTX *ctx;
 int outl;
 int res = -1;
 unsigned char skip_buf[16];

 ctx = EVP_CIPHER_CTX_new();
 if (!ctx ||
     !EVP_CIPHER_CTX_set_padding(ctx, 0) ||
     !EVP_CipherInit_ex(ctx, EVP_rc4(), ((void*)0), ((void*)0), ((void*)0), 1) ||
     !EVP_CIPHER_CTX_set_key_length(ctx, keylen) ||
     !EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), key, ((void*)0), 1))
  goto out;

 while (skip >= sizeof(skip_buf)) {
  size_t len = skip;
  if (len > sizeof(skip_buf))
   len = sizeof(skip_buf);
  if (!EVP_CipherUpdate(ctx, skip_buf, &outl, skip_buf, len))
   goto out;
  skip -= len;
 }

 if (EVP_CipherUpdate(ctx, data, &outl, data, data_len))
  res = 0;

out:
 if (ctx)
  EVP_CIPHER_CTX_free(ctx);
 return res;

}
