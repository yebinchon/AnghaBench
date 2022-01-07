
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct blake2s_xform_ctx {int state; } ;


 int BLAKE2S_OUTBYTES ;
 int blake2s_final_ref (int *,int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
blake2s_xform_final(uint8_t *out, void *vctx)
{
 struct blake2s_xform_ctx *ctx = vctx;
 int rc;

 rc = blake2s_final_ref(&ctx->state, out, BLAKE2S_OUTBYTES);
 if (rc != 0)
  panic("blake2s_final: invalid");
}
