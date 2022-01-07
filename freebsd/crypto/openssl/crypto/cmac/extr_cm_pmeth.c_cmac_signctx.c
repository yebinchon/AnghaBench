
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int CMAC_Final (int ,unsigned char*,size_t*) ;

__attribute__((used)) static int cmac_signctx(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                        EVP_MD_CTX *mctx)
{
    return CMAC_Final(ctx->data, sig, siglen);
}
