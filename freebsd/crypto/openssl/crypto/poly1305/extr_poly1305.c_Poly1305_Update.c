
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int poly1305_blocks_f ;
struct TYPE_4__ {int blocks; } ;
struct TYPE_5__ {size_t num; unsigned char const* data; int opaque; TYPE_1__ func; } ;
typedef TYPE_2__ POLY1305 ;


 size_t POLY1305_BLOCK_SIZE ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int poly1305_blocks (int ,unsigned char const*,size_t,int) ;

void Poly1305_Update(POLY1305 *ctx, const unsigned char *inp, size_t len)
{
    size_t rem, num;

    if ((num = ctx->num)) {
        rem = POLY1305_BLOCK_SIZE - num;
        if (len >= rem) {
            memcpy(ctx->data + num, inp, rem);
            poly1305_blocks(ctx->opaque, ctx->data, POLY1305_BLOCK_SIZE, 1);
            inp += rem;
            len -= rem;
        } else {

            memcpy(ctx->data + num, inp, len);
            ctx->num = num + len;
            return;
        }
    }

    rem = len % POLY1305_BLOCK_SIZE;
    len -= rem;

    if (len >= POLY1305_BLOCK_SIZE) {
        poly1305_blocks(ctx->opaque, inp, len, 1);
        inp += len;
    }

    if (rem)
        memcpy(ctx->data, inp, rem);

    ctx->num = rem;
}
