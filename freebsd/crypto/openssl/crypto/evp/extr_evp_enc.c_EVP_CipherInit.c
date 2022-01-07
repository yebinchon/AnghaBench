
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_reset (int *) ;
 int EVP_CipherInit_ex (int *,int const*,int *,unsigned char const*,unsigned char const*,int) ;

int EVP_CipherInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                   const unsigned char *key, const unsigned char *iv, int enc)
{
    if (cipher != ((void*)0))
        EVP_CIPHER_CTX_reset(ctx);
    return EVP_CipherInit_ex(ctx, cipher, ((void*)0), key, iv, enc);
}
