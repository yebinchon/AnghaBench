
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_13__ {int hi; int lo; } ;
typedef TYPE_4__ u128 ;
typedef int bitlen ;
struct TYPE_12__ {int* u; int c; } ;
struct TYPE_11__ {int* u; } ;
struct TYPE_10__ {int* u; int * c; } ;
struct TYPE_14__ {void (* gmult ) (int*,u128 const*) ;void (* ghash ) (int*,u128 const*,u8 const*,size_t) ;unsigned int mres; TYPE_3__ Xi; TYPE_2__ EK0; scalar_t__ Xn; TYPE_1__ len; scalar_t__ ares; } ;
typedef TYPE_5__ GCM128_CONTEXT ;


 int BSWAP8 (int) ;
 int CRYPTO_memcmp (int ,unsigned char const*,size_t) ;
 int GCM_MUL (TYPE_5__*) ;
 int GETU32 (int *) ;
 int GHASH (TYPE_5__*,scalar_t__,unsigned int) ;
 int memcpy (scalar_t__,TYPE_4__*,int) ;
 int memset (scalar_t__,int ,unsigned int) ;

int CRYPTO_gcm128_finish(GCM128_CONTEXT *ctx, const unsigned char *tag,
                         size_t len)
{
    const union {
        long one;
        char little;
    } is_endian = { 1 };
    u64 alen = ctx->len.u[0] << 3;
    u64 clen = ctx->len.u[1] << 3;
    if (ctx->mres || ctx->ares)
        GCM_MUL(ctx);


    if (is_endian.little) {




        u8 *p = ctx->len.c;

        ctx->len.u[0] = alen;
        ctx->len.u[1] = clen;

        alen = (u64)GETU32(p) << 32 | GETU32(p + 4);
        clen = (u64)GETU32(p + 8) << 32 | GETU32(p + 12);

    }
    ctx->Xi.u[0] ^= alen;
    ctx->Xi.u[1] ^= clen;
    GCM_MUL(ctx);


    ctx->Xi.u[0] ^= ctx->EK0.u[0];
    ctx->Xi.u[1] ^= ctx->EK0.u[1];

    if (tag && len <= sizeof(ctx->Xi))
        return CRYPTO_memcmp(ctx->Xi.c, tag, len);
    else
        return -1;
}
