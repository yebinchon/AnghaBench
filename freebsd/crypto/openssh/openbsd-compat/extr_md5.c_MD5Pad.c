
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ MD5_CTX ;


 int MD5Update (TYPE_1__*,int *,int) ;
 int MD5_BLOCK_LENGTH ;
 int * PADDING ;
 int PUT_64BIT_LE (int *,int) ;

void
MD5Pad(MD5_CTX *ctx)
{
 u_int8_t count[8];
 size_t padlen;


 PUT_64BIT_LE(count, ctx->count);


 padlen = MD5_BLOCK_LENGTH -
     ((ctx->count >> 3) & (MD5_BLOCK_LENGTH - 1));
 if (padlen < 1 + 8)
  padlen += MD5_BLOCK_LENGTH;
 MD5Update(ctx, PADDING, padlen - 8);
 MD5Update(ctx, count, 8);
}
