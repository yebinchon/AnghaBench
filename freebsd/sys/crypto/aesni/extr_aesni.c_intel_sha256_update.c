
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int count; unsigned char const* buf; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int intel_sha256_step (int ,unsigned char const*,int) ;
 int memcpy (unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static int
intel_sha256_update(void *vctx, const void *vdata, u_int len)
{
 SHA256_CTX *ctx = vctx;
 uint64_t bitlen;
 uint32_t r;
 u_int blocks;
 const unsigned char *src = vdata;


 r = (ctx->count >> 3) & 0x3f;


 bitlen = len << 3;


 ctx->count += bitlen;


 if (len < 64 - r) {
  memcpy(&ctx->buf[r], src, len);
  return (0);
 }


 memcpy(&ctx->buf[r], src, 64 - r);
 intel_sha256_step(ctx->state, ctx->buf, 1);
 src += 64 - r;
 len -= 64 - r;


 if (len >= 64) {
  blocks = len / 64;
  intel_sha256_step(ctx->state, src, blocks);
  src += blocks * 64;
  len -= blocks * 64;
 }


 memcpy(ctx->buf, src, len);
 return (0);
}
