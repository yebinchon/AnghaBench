
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ SIPHASH_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int SipHash_Final (int *,unsigned char*,size_t) ;
 size_t SipHash_hash_size (int *) ;

__attribute__((used)) static int siphash_signctx(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                            EVP_MD_CTX *mctx)
{
    SIPHASH_PKEY_CTX *pctx = ctx->data;

    *siglen = SipHash_hash_size(&pctx->ctx);
    if (sig != ((void*)0))
        return SipHash_Final(&pctx->ctx, sig, *siglen);
    return 1;
}
