
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ RMD160_CTX ;


 int * PADDING ;
 int PUT_64BIT_LE (int *,int) ;
 int RMD160Update (TYPE_1__*,int *,int) ;
 int RMD160_BLOCK_LENGTH ;

void
RMD160Pad(RMD160_CTX *ctx)
{
 u_int8_t size[8];
 size_t padlen;

 PUT_64BIT_LE(size, ctx->count);





 padlen = RMD160_BLOCK_LENGTH - ((ctx->count / 8) % RMD160_BLOCK_LENGTH);
 if (padlen < 1 + 8)
  padlen += RMD160_BLOCK_LENGTH;
 RMD160Update(ctx, PADDING, padlen - 8);
 RMD160Update(ctx, size, 8);
}
