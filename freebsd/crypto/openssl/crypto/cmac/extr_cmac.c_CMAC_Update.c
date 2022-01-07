
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlast_block; unsigned char const* last_block; int tbl; int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 size_t EVP_CIPHER_CTX_block_size (int ) ;
 int EVP_Cipher (int ,int ,unsigned char const*,size_t) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

int CMAC_Update(CMAC_CTX *ctx, const void *in, size_t dlen)
{
    const unsigned char *data = in;
    size_t bl;
    if (ctx->nlast_block == -1)
        return 0;
    if (dlen == 0)
        return 1;
    bl = EVP_CIPHER_CTX_block_size(ctx->cctx);

    if (ctx->nlast_block > 0) {
        size_t nleft;
        nleft = bl - ctx->nlast_block;
        if (dlen < nleft)
            nleft = dlen;
        memcpy(ctx->last_block + ctx->nlast_block, data, nleft);
        dlen -= nleft;
        ctx->nlast_block += nleft;

        if (dlen == 0)
            return 1;
        data += nleft;

        if (!EVP_Cipher(ctx->cctx, ctx->tbl, ctx->last_block, bl))
            return 0;
    }

    while (dlen > bl) {
        if (!EVP_Cipher(ctx->cctx, ctx->tbl, data, bl))
            return 0;
        dlen -= bl;
        data += bl;
    }

    memcpy(ctx->last_block, data, dlen);
    ctx->nlast_block = dlen;
    return 1;

}
