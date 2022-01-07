
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encrypt; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int EVP_DecryptFinal (TYPE_1__*,unsigned char*,int*) ;
 int EVP_EncryptFinal (TYPE_1__*,unsigned char*,int*) ;

int EVP_CipherFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    if (ctx->encrypt)
        return EVP_EncryptFinal(ctx, out, outl);
    else
        return EVP_DecryptFinal(ctx, out, outl);
}
