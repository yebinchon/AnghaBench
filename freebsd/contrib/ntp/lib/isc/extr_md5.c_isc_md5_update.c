
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int isc_uint32_t ;
struct TYPE_3__ {unsigned int* bytes; unsigned char* in; int buf; } ;
typedef TYPE_1__ isc_md5_t ;


 int byteSwap (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int transform (int ,unsigned char*) ;

void
isc_md5_update(isc_md5_t *ctx, const unsigned char *buf, unsigned int len) {
 isc_uint32_t t;



 t = ctx->bytes[0];
 if ((ctx->bytes[0] = t + len) < t)
  ctx->bytes[1]++;

 t = 64 - (t & 0x3f);
 if (t > len) {
  memcpy((unsigned char *)ctx->in + 64 - t, buf, len);
  return;
 }

 memcpy((unsigned char *)ctx->in + 64 - t, buf, t);
 byteSwap(ctx->in, 16);
 transform(ctx->buf, ctx->in);
 buf += t;
 len -= t;


 while (len >= 64) {
  memcpy(ctx->in, buf, 64);
  byteSwap(ctx->in, 16);
  transform(ctx->buf, ctx->in);
  buf += 64;
  len -= 64;
 }


 memcpy(ctx->in, buf, len);
}
