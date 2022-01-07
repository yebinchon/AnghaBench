
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blake2b_xform_ctx {scalar_t__ klen; int state; int key; } ;


 int BLAKE2B_OUTBYTES ;
 int blake2b_init_key_ref (int *,int ,int ,scalar_t__) ;
 int blake2b_init_ref (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
blake2b_xform_init(void *vctx)
{
 struct blake2b_xform_ctx *ctx = vctx;
 int rc;

 if (ctx->klen > 0)
  rc = blake2b_init_key_ref(&ctx->state, BLAKE2B_OUTBYTES,
      ctx->key, ctx->klen);
 else
  rc = blake2b_init_ref(&ctx->state, BLAKE2B_OUTBYTES);
 if (rc != 0)
  panic("blake2b_init_key: invalid arguments");
}
