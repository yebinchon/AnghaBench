
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pad ;
struct TYPE_3__ {int* key; int key_length; int i_ctx; int md_ctx; int o_ctx; int const* md; } ;
typedef TYPE_1__ HMAC_CTX ;
typedef int const EVP_MD ;
typedef int ENGINE ;


 int EVP_DigestFinal_ex (int ,int*,int*) ;
 int EVP_DigestInit_ex (int ,int const*,int *) ;
 int EVP_DigestUpdate (int ,unsigned char*,int) ;
 int EVP_MD_CTX_copy_ex (int ,int ) ;
 int EVP_MD_FLAG_XOF ;
 int EVP_MD_block_size (int const*) ;
 int EVP_MD_meth_get_flags (int const*) ;
 int HMAC_MAX_MD_CBLOCK_SIZE ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int memcpy (int*,void const*,int) ;
 int memset (int*,int ,int) ;
 int ossl_assert (int) ;

int HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len,
                 const EVP_MD *md, ENGINE *impl)
{
    int rv = 0;
    int i, j, reset = 0;
    unsigned char pad[HMAC_MAX_MD_CBLOCK_SIZE];


    if (md != ((void*)0) && md != ctx->md && (key == ((void*)0) || len < 0))
        return 0;

    if (md != ((void*)0)) {
        reset = 1;
        ctx->md = md;
    } else if (ctx->md) {
        md = ctx->md;
    } else {
        return 0;
    }





    if ((EVP_MD_meth_get_flags(md) & EVP_MD_FLAG_XOF) != 0)
        return 0;

    if (key != ((void*)0)) {
        reset = 1;
        j = EVP_MD_block_size(md);
        if (!ossl_assert(j <= (int)sizeof(ctx->key)))
            return 0;
        if (j < len) {
            if (!EVP_DigestInit_ex(ctx->md_ctx, md, impl)
                    || !EVP_DigestUpdate(ctx->md_ctx, key, len)
                    || !EVP_DigestFinal_ex(ctx->md_ctx, ctx->key,
                                           &ctx->key_length))
                return 0;
        } else {
            if (len < 0 || len > (int)sizeof(ctx->key))
                return 0;
            memcpy(ctx->key, key, len);
            ctx->key_length = len;
        }
        if (ctx->key_length != HMAC_MAX_MD_CBLOCK_SIZE)
            memset(&ctx->key[ctx->key_length], 0,
                   HMAC_MAX_MD_CBLOCK_SIZE - ctx->key_length);
    }

    if (reset) {
        for (i = 0; i < HMAC_MAX_MD_CBLOCK_SIZE; i++)
            pad[i] = 0x36 ^ ctx->key[i];
        if (!EVP_DigestInit_ex(ctx->i_ctx, md, impl)
                || !EVP_DigestUpdate(ctx->i_ctx, pad, EVP_MD_block_size(md)))
            goto err;

        for (i = 0; i < HMAC_MAX_MD_CBLOCK_SIZE; i++)
            pad[i] = 0x5c ^ ctx->key[i];
        if (!EVP_DigestInit_ex(ctx->o_ctx, md, impl)
                || !EVP_DigestUpdate(ctx->o_ctx, pad, EVP_MD_block_size(md)))
            goto err;
    }
    if (!EVP_MD_CTX_copy_ex(ctx->md_ctx, ctx->i_ctx))
        goto err;
    rv = 1;
 err:
    if (reset)
        OPENSSL_cleanse(pad, sizeof(pad));
    return rv;
}
