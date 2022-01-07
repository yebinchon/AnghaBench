
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* digest; int md_data; } ;
struct TYPE_7__ {unsigned int md_size; int (* final ) (TYPE_2__*,unsigned char*) ;int ctx_size; int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_MD_CTX ;


 unsigned int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_set_flags (TYPE_2__*,int ) ;
 int OPENSSL_assert (int) ;
 int OPENSSL_cleanse (int ,int ) ;
 int stub1 (TYPE_2__*,unsigned char*) ;
 int stub2 (TYPE_2__*) ;

int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *size)
{
    int ret;

    OPENSSL_assert(ctx->digest->md_size <= EVP_MAX_MD_SIZE);
    ret = ctx->digest->final(ctx, md);
    if (size != ((void*)0))
        *size = ctx->digest->md_size;
    if (ctx->digest->cleanup) {
        ctx->digest->cleanup(ctx);
        EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);
    }
    OPENSSL_cleanse(ctx->md_data, ctx->digest->ctx_size);
    return ret;
}
