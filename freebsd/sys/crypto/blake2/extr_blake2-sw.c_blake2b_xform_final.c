
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct blake2b_xform_ctx {int state; } ;


 int BLAKE2B_OUTBYTES ;
 int blake2b_final_ref (int *,int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
blake2b_xform_final(uint8_t *out, void *vctx)
{
 struct blake2b_xform_ctx *ctx = vctx;
 int rc;

 rc = blake2b_final_ref(&ctx->state, out, BLAKE2B_OUTBYTES);
 if (rc != 0)
  panic("blake2b_final: invalid");
}
