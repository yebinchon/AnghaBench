
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pctx; } ;
struct TYPE_9__ {TYPE_1__* pmeth; } ;
struct TYPE_8__ {int (* digestsign ) (TYPE_3__*,unsigned char*,size_t*,unsigned char const*,size_t) ;} ;
typedef TYPE_3__ EVP_MD_CTX ;


 int EVP_DigestSignFinal (TYPE_3__*,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignUpdate (TYPE_3__*,unsigned char const*,size_t) ;
 int stub1 (TYPE_3__*,unsigned char*,size_t*,unsigned char const*,size_t) ;

int EVP_DigestSign(EVP_MD_CTX *ctx, unsigned char *sigret, size_t *siglen,
                   const unsigned char *tbs, size_t tbslen)
{
    if (ctx->pctx->pmeth->digestsign != ((void*)0))
        return ctx->pctx->pmeth->digestsign(ctx, sigret, siglen, tbs, tbslen);
    if (sigret != ((void*)0) && EVP_DigestSignUpdate(ctx, tbs, tbslen) <= 0)
        return 0;
    return EVP_DigestSignFinal(ctx, sigret, siglen);
}
