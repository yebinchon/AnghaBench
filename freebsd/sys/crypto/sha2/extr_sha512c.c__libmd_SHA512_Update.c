
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* count; unsigned char const* buf; int state; } ;
typedef TYPE_1__ SHA512_CTX ;


 int SHA512_BLOCK_LENGTH ;
 int SHA512_Transform (int ,unsigned char const*) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

void
SHA512_Update(SHA512_CTX * ctx, const void *in, size_t len)
{
 uint64_t bitlen[2];
 uint64_t r;
 const unsigned char *src = in;


 r = (ctx->count[1] >> 3) & 0x7f;


 bitlen[1] = ((uint64_t)len) << 3;
 bitlen[0] = ((uint64_t)len) >> 61;


 if ((ctx->count[1] += bitlen[1]) < bitlen[1])
  ctx->count[0]++;
 ctx->count[0] += bitlen[0];


 if (len < SHA512_BLOCK_LENGTH - r) {
  memcpy(&ctx->buf[r], src, len);
  return;
 }


 memcpy(&ctx->buf[r], src, SHA512_BLOCK_LENGTH - r);
 SHA512_Transform(ctx->state, ctx->buf);
 src += SHA512_BLOCK_LENGTH - r;
 len -= SHA512_BLOCK_LENGTH - r;


 while (len >= SHA512_BLOCK_LENGTH) {
  SHA512_Transform(ctx->state, src);
  src += SHA512_BLOCK_LENGTH;
  len -= SHA512_BLOCK_LENGTH;
 }


 memcpy(ctx->buf, src, len);
}
