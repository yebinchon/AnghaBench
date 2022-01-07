
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct blake2s_xform_ctx {int klen; int key; } ;


 int memcpy (int ,int const*,int) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static void
blake2s_xform_setkey(void *vctx, const uint8_t *key, uint16_t klen)
{
 struct blake2s_xform_ctx *ctx = vctx;

 if (klen > sizeof(ctx->key))
  panic("invalid klen %u", (unsigned)klen);
 memcpy(ctx->key, key, klen);
 ctx->klen = klen;
}
