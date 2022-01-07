
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int * b8; } ;
struct TYPE_5__ {int b32; } ;
struct TYPE_4__ {int* b64; } ;
struct sha1_ctxt {int count; TYPE_3__ m; TYPE_2__ h; TYPE_1__ c; } ;


 int bcopy (char const*,int *,size_t) ;
 int intel_sha1_step (int ,void*,int) ;

__attribute__((used)) static int
intel_sha1_update(void *vctx, const void *vdata, u_int datalen)
{
 struct sha1_ctxt *ctx = vctx;
 const char *data = vdata;
 size_t gaplen;
 size_t gapstart;
 size_t off;
 size_t copysiz;
 u_int blocks;

 off = 0;

 if (datalen >= 64 && ctx->count % 64 == 0) {
  blocks = datalen / 64;
  ctx->c.b64[0] += blocks * 64 * 8;
  intel_sha1_step(ctx->h.b32, data + off, blocks);
  off += blocks * 64;
 }

 while (off < datalen) {
  gapstart = ctx->count % 64;
  gaplen = 64 - gapstart;

  copysiz = (gaplen < datalen - off) ? gaplen : datalen - off;
  bcopy(&data[off], &ctx->m.b8[gapstart], copysiz);
  ctx->count += copysiz;
  ctx->count %= 64;
  ctx->c.b64[0] += copysiz * 8;
  if (ctx->count % 64 == 0)
   intel_sha1_step(ctx->h.b32, (void *)ctx->m.b8, 1);
  off += copysiz;
 }
 return (0);
}
