
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* count; int * buf; int state; } ;
typedef TYPE_1__ SHA512_CTX ;


 int PAD ;
 int SHA512_Transform (int ,int *) ;
 int be64enc_vect (int *,int*,int) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
SHA512_Pad(SHA512_CTX * ctx)
{
 size_t r;


 r = (ctx->count[1] >> 3) & 0x7f;


 if (r < 112) {

  memcpy(&ctx->buf[r], PAD, 112 - r);
 } else {

  memcpy(&ctx->buf[r], PAD, 128 - r);
  SHA512_Transform(ctx->state, ctx->buf);


  memset(&ctx->buf[0], 0, 112);
 }


 be64enc_vect(&ctx->buf[112], ctx->count, 16);


 SHA512_Transform(ctx->state, ctx->buf);
}
