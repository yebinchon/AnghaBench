
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_11__ {int* c; } ;
struct TYPE_10__ {size_t blocks_processed; TYPE_2__ checksum; TYPE_2__ offset; } ;
struct TYPE_12__ {TYPE_1__ sess; int keyenc; int (* encrypt ) (unsigned char*,unsigned char const*,int ) ;TYPE_2__ l_star; scalar_t__ l; int (* stream ) (unsigned char const*,unsigned char*,size_t,int ,size_t,int*,unsigned char const**,int*) ;} ;
typedef TYPE_2__ OCB_BLOCK ;
typedef TYPE_3__ OCB128_CONTEXT ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char const*,int ,int) ;
 int ocb_block16_xor (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int ocb_block_xor (unsigned char const*,unsigned char const*,size_t,unsigned char*) ;
 TYPE_2__* ocb_lookup_l (TYPE_3__*,size_t) ;
 size_t ocb_ntz (size_t) ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int ,size_t,int*,unsigned char const**,int*) ;
 int stub2 (unsigned char*,unsigned char*,int ) ;
 int stub3 (unsigned char*,unsigned char const*,int ) ;

int CRYPTO_ocb128_encrypt(OCB128_CONTEXT *ctx,
                          const unsigned char *in, unsigned char *out,
                          size_t len)
{
    u64 i, all_num_blocks;
    size_t num_blocks, last_len;





    num_blocks = len / 16;
    all_num_blocks = num_blocks + ctx->sess.blocks_processed;

    if (num_blocks && all_num_blocks == (size_t)all_num_blocks
        && ctx->stream != ((void*)0)) {
        size_t max_idx = 0, top = (size_t)all_num_blocks;





        while (top >>= 1)
            max_idx++;
        if (ocb_lookup_l(ctx, max_idx) == ((void*)0))
            return 0;

        ctx->stream(in, out, num_blocks, ctx->keyenc,
                    (size_t)ctx->sess.blocks_processed + 1, ctx->sess.offset.c,
                    (const unsigned char (*)[16])ctx->l, ctx->sess.checksum.c);
    } else {

        for (i = ctx->sess.blocks_processed + 1; i <= all_num_blocks; i++) {
            OCB_BLOCK *lookup;
            OCB_BLOCK tmp;


            lookup = ocb_lookup_l(ctx, ocb_ntz(i));
            if (lookup == ((void*)0))
                return 0;
            ocb_block16_xor(&ctx->sess.offset, lookup, &ctx->sess.offset);

            memcpy(tmp.c, in, 16);
            in += 16;


            ocb_block16_xor(&tmp, &ctx->sess.checksum, &ctx->sess.checksum);


            ocb_block16_xor(&ctx->sess.offset, &tmp, &tmp);
            ctx->encrypt(tmp.c, tmp.c, ctx->keyenc);
            ocb_block16_xor(&ctx->sess.offset, &tmp, &tmp);

            memcpy(out, tmp.c, 16);
            out += 16;
        }
    }





    last_len = len % 16;

    if (last_len > 0) {
        OCB_BLOCK pad;


        ocb_block16_xor(&ctx->sess.offset, &ctx->l_star, &ctx->sess.offset);


        ctx->encrypt(ctx->sess.offset.c, pad.c, ctx->keyenc);


        ocb_block_xor(in, pad.c, last_len, out);


        memset(pad.c, 0, 16);
        memcpy(pad.c, in, last_len);
        pad.c[last_len] = 0x80;
        ocb_block16_xor(&pad, &ctx->sess.checksum, &ctx->sess.checksum);
    }

    ctx->sess.blocks_processed = all_num_blocks;

    return 1;
}
