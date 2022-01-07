
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * buf; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int PAD ;
 int SHA256_Transform (int ,int *) ;
 int be64enc (int *,int) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
SHA256_Pad(SHA256_CTX * ctx)
{
 size_t r;


 r = (ctx->count >> 3) & 0x3f;


 if (r < 56) {

  memcpy(&ctx->buf[r], PAD, 56 - r);
 } else {

  memcpy(&ctx->buf[r], PAD, 64 - r);
  SHA256_Transform(ctx->state, ctx->buf);


  memset(&ctx->buf[0], 0, 56);
 }


 be64enc(&ctx->buf[56], ctx->count);


 SHA256_Transform(ctx->state, ctx->buf);
}
