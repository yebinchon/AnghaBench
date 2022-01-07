
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ssh_hmac_ctx {int digest; int * buf; int octx; int alg; } ;


 size_t ssh_digest_bytes (int ) ;
 scalar_t__ ssh_digest_copy_state (int ,int ) ;
 scalar_t__ ssh_digest_final (int ,int *,size_t) ;
 scalar_t__ ssh_digest_update (int ,int *,size_t) ;

int
ssh_hmac_final(struct ssh_hmac_ctx *ctx, u_char *d, size_t dlen)
{
 size_t len;

 len = ssh_digest_bytes(ctx->alg);
 if (dlen < len ||
     ssh_digest_final(ctx->digest, ctx->buf, len))
  return -1;

 if (ssh_digest_copy_state(ctx->octx, ctx->digest) < 0 ||
     ssh_digest_update(ctx->digest, ctx->buf, len) < 0 ||
     ssh_digest_final(ctx->digest, d, dlen) < 0)
  return -1;
 return 0;
}
