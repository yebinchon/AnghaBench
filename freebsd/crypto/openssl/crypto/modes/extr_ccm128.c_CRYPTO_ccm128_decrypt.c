
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int u64 ;
typedef int (* block128_f ) (unsigned char*,unsigned char*,void*) ;
struct TYPE_6__ {unsigned char* c; } ;
struct TYPE_5__ {unsigned char* c; int* u; } ;
struct TYPE_7__ {TYPE_2__ nonce; TYPE_1__ cmac; void* key; int (* block ) (unsigned char*,unsigned char*,void*) ;} ;
typedef TYPE_3__ CCM128_CONTEXT ;


 int ctr64_inc (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int stub1 (unsigned char*,unsigned char*,void*) ;
 int stub2 (unsigned char*,unsigned char*,void*) ;
 int stub3 (unsigned char*,unsigned char*,void*) ;
 int stub4 (unsigned char*,unsigned char*,void*) ;
 int stub5 (unsigned char*,unsigned char*,void*) ;
 int stub6 (unsigned char*,unsigned char*,void*) ;

int CRYPTO_ccm128_decrypt(CCM128_CONTEXT *ctx,
                          const unsigned char *inp, unsigned char *out,
                          size_t len)
{
    size_t n;
    unsigned int i, L;
    unsigned char flags0 = ctx->nonce.c[0];
    block128_f block = ctx->block;
    void *key = ctx->key;
    union {
        u64 u[2];
        u8 c[16];
    } scratch;

    if (!(flags0 & 0x40))
        (*block) (ctx->nonce.c, ctx->cmac.c, key);

    ctx->nonce.c[0] = L = flags0 & 7;
    for (n = 0, i = 15 - L; i < 15; ++i) {
        n |= ctx->nonce.c[i];
        ctx->nonce.c[i] = 0;
        n <<= 8;
    }
    n |= ctx->nonce.c[15];
    ctx->nonce.c[15] = 1;

    if (n != len)
        return -1;

    while (len >= 16) {






        (*block) (ctx->nonce.c, scratch.c, key);
        ctr64_inc(ctx->nonce.c);






        ctx->cmac.u[0] ^= (((u64 *)out)[0] = scratch.u[0] ^ ((u64 *)inp)[0]);
        ctx->cmac.u[1] ^= (((u64 *)out)[1] = scratch.u[1] ^ ((u64 *)inp)[1]);

        (*block) (ctx->cmac.c, ctx->cmac.c, key);

        inp += 16;
        out += 16;
        len -= 16;
    }

    if (len) {
        (*block) (ctx->nonce.c, scratch.c, key);
        for (i = 0; i < len; ++i)
            ctx->cmac.c[i] ^= (out[i] = scratch.c[i] ^ inp[i]);
        (*block) (ctx->cmac.c, ctx->cmac.c, key);
    }

    for (i = 15 - L; i < 16; ++i)
        ctx->nonce.c[i] = 0;

    (*block) (ctx->nonce.c, scratch.c, key);
    ctx->cmac.u[0] ^= scratch.u[0];
    ctx->cmac.u[1] ^= scratch.u[1];

    ctx->nonce.c[0] = flags0;

    return 0;
}
