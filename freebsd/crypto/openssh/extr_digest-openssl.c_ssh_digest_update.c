
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest_ctx {int mdctx; } ;


 int EVP_DigestUpdate (int ,void const*,size_t) ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

int
ssh_digest_update(struct ssh_digest_ctx *ctx, const void *m, size_t mlen)
{
 if (EVP_DigestUpdate(ctx->mdctx, m, mlen) != 1)
  return SSH_ERR_LIBCRYPTO_ERROR;
 return 0;
}
