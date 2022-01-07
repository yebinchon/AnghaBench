
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_3__ {int count; int const* buffer; int state; } ;
typedef TYPE_1__ RMD160_CTX ;


 int RMD160Transform (int ,int const*) ;
 int RMD160_BLOCK_LENGTH ;
 int memcpy (int const*,int const*,size_t) ;

void
RMD160Update(RMD160_CTX *ctx, const u_int8_t *input, size_t len)
{
 size_t have, off, need;

 have = (ctx->count / 8) % RMD160_BLOCK_LENGTH;
 need = RMD160_BLOCK_LENGTH - have;
 ctx->count += 8 * len;
 off = 0;

 if (len >= need) {
  if (have) {
   memcpy(ctx->buffer + have, input, need);
   RMD160Transform(ctx->state, ctx->buffer);
   off = need;
   have = 0;
  }

  while (off + RMD160_BLOCK_LENGTH <= len) {
   RMD160Transform(ctx->state, input+off);
   off += RMD160_BLOCK_LENGTH;
  }
 }
 if (off < len)
  memcpy(ctx->buffer + have, input+off, len-off);
}
