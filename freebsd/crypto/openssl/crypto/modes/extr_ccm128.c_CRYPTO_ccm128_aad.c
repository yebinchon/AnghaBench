
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int (* block128_f ) (int*,int*,int ) ;
typedef int alen ;
struct TYPE_6__ {int* c; } ;
struct TYPE_5__ {int* c; } ;
struct TYPE_7__ {int blocks; int key; TYPE_2__ cmac; TYPE_1__ nonce; int (* block ) (int*,int*,int ) ;} ;
typedef TYPE_3__ CCM128_CONTEXT ;


 int stub1 (int*,int*,int ) ;
 int stub2 (int*,int*,int ) ;

void CRYPTO_ccm128_aad(CCM128_CONTEXT *ctx,
                       const unsigned char *aad, size_t alen)
{
    unsigned int i;
    block128_f block = ctx->block;

    if (alen == 0)
        return;

    ctx->nonce.c[0] |= 0x40;
    (*block) (ctx->nonce.c, ctx->cmac.c, ctx->key), ctx->blocks++;

    if (alen < (0x10000 - 0x100)) {
        ctx->cmac.c[0] ^= (u8)(alen >> 8);
        ctx->cmac.c[1] ^= (u8)alen;
        i = 2;
    } else if (sizeof(alen) == 8
               && alen >= (size_t)1 << (32 % (sizeof(alen) * 8))) {
        ctx->cmac.c[0] ^= 0xFF;
        ctx->cmac.c[1] ^= 0xFF;
        ctx->cmac.c[2] ^= (u8)(alen >> (56 % (sizeof(alen) * 8)));
        ctx->cmac.c[3] ^= (u8)(alen >> (48 % (sizeof(alen) * 8)));
        ctx->cmac.c[4] ^= (u8)(alen >> (40 % (sizeof(alen) * 8)));
        ctx->cmac.c[5] ^= (u8)(alen >> (32 % (sizeof(alen) * 8)));
        ctx->cmac.c[6] ^= (u8)(alen >> 24);
        ctx->cmac.c[7] ^= (u8)(alen >> 16);
        ctx->cmac.c[8] ^= (u8)(alen >> 8);
        ctx->cmac.c[9] ^= (u8)alen;
        i = 10;
    } else {
        ctx->cmac.c[0] ^= 0xFF;
        ctx->cmac.c[1] ^= 0xFE;
        ctx->cmac.c[2] ^= (u8)(alen >> 24);
        ctx->cmac.c[3] ^= (u8)(alen >> 16);
        ctx->cmac.c[4] ^= (u8)(alen >> 8);
        ctx->cmac.c[5] ^= (u8)alen;
        i = 6;
    }

    do {
        for (; i < 16 && alen; ++i, ++aad, --alen)
            ctx->cmac.c[i] ^= *aad;
        (*block) (ctx->cmac.c, ctx->cmac.c, ctx->key), ctx->blocks++;
        i = 0;
    } while (alen);
}
