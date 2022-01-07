
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_3__ {int count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ MD5_CTX ;


 int MD5Transform (int ,unsigned char const*) ;
 int MD5_BLOCK_LENGTH ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

void
MD5Update(MD5_CTX *ctx, const unsigned char *input, size_t len)
{
 size_t have, need;


 have = (size_t)((ctx->count >> 3) & (MD5_BLOCK_LENGTH - 1));
 need = MD5_BLOCK_LENGTH - have;


 ctx->count += (u_int64_t)len << 3;

 if (len >= need) {
  if (have != 0) {
   memcpy(ctx->buffer + have, input, need);
   MD5Transform(ctx->state, ctx->buffer);
   input += need;
   len -= need;
   have = 0;
  }


  while (len >= MD5_BLOCK_LENGTH) {
   MD5Transform(ctx->state, input);
   input += MD5_BLOCK_LENGTH;
   len -= MD5_BLOCK_LENGTH;
  }
 }


 if (len != 0)
  memcpy(ctx->buffer + have, input, len);
}
