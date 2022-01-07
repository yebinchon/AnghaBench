
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int c; } ;
struct TYPE_10__ {TYPE_2__ sum; TYPE_2__ offset; TYPE_2__ checksum; } ;
struct TYPE_12__ {TYPE_1__ sess; int keyenc; int (* encrypt ) (int ,int ,int ) ;TYPE_2__ l_dollar; } ;
typedef TYPE_2__ OCB_BLOCK ;
typedef TYPE_3__ OCB128_CONTEXT ;


 int CRYPTO_memcmp (TYPE_2__*,unsigned char*,size_t) ;
 int memcpy (unsigned char*,TYPE_2__*,size_t) ;
 int ocb_block16_xor (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int ocb_finish(OCB128_CONTEXT *ctx, unsigned char *tag, size_t len,
                      int write)
{
    OCB_BLOCK tmp;

    if (len > 16 || len < 1) {
        return -1;
    }




    ocb_block16_xor(&ctx->sess.checksum, &ctx->sess.offset, &tmp);
    ocb_block16_xor(&ctx->l_dollar, &tmp, &tmp);
    ctx->encrypt(tmp.c, tmp.c, ctx->keyenc);
    ocb_block16_xor(&tmp, &ctx->sess.sum, &tmp);

    if (write) {
        memcpy(tag, &tmp, len);
        return 1;
    } else {
        return CRYPTO_memcmp(&tmp, tag, len);
    }
}
