
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest_ctx {int mdctx; } ;


 int EVP_MD_CTX_free (int ) ;
 int freezero (struct ssh_digest_ctx*,int) ;

void
ssh_digest_free(struct ssh_digest_ctx *ctx)
{
 if (ctx == ((void*)0))
  return;
 EVP_MD_CTX_free(ctx->mdctx);
 freezero(ctx, sizeof(*ctx));
}
