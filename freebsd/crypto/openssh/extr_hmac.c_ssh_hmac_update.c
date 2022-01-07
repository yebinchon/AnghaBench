
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_hmac_ctx {int digest; } ;


 int ssh_digest_update (int ,void const*,size_t) ;

int
ssh_hmac_update(struct ssh_hmac_ctx *ctx, const void *m, size_t mlen)
{
 return ssh_digest_update(ctx->digest, m, mlen);
}
