
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ POLY1305_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 size_t POLY1305_DIGEST_SIZE ;
 int Poly1305_Final (int *,unsigned char*) ;

__attribute__((used)) static int poly1305_signctx(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                            EVP_MD_CTX *mctx)
{
    POLY1305_PKEY_CTX *pctx = ctx->data;

    *siglen = POLY1305_DIGEST_SIZE;
    if (sig != ((void*)0))
        Poly1305_Final(&pctx->ctx, sig);
    return 1;
}
