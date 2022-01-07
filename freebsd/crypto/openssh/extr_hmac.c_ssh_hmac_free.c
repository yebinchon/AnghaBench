
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_hmac_ctx {int buf_len; struct ssh_hmac_ctx* buf; int digest; int octx; int ictx; } ;


 int explicit_bzero (struct ssh_hmac_ctx*,int) ;
 int free (struct ssh_hmac_ctx*) ;
 int ssh_digest_free (int ) ;

void
ssh_hmac_free(struct ssh_hmac_ctx *ctx)
{
 if (ctx != ((void*)0)) {
  ssh_digest_free(ctx->ictx);
  ssh_digest_free(ctx->octx);
  ssh_digest_free(ctx->digest);
  if (ctx->buf) {
   explicit_bzero(ctx->buf, ctx->buf_len);
   free(ctx->buf);
  }
  explicit_bzero(ctx, sizeof(*ctx));
  free(ctx);
 }
}
