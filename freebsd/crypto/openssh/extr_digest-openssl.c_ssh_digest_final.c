
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
struct ssh_digest_ctx {int mdctx; int alg; } ;
struct ssh_digest {size_t digest_len; } ;


 int EVP_DigestFinal_ex (int ,int *,size_t*) ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 size_t UINT_MAX ;
 struct ssh_digest* ssh_digest_by_alg (int ) ;

int
ssh_digest_final(struct ssh_digest_ctx *ctx, u_char *d, size_t dlen)
{
 const struct ssh_digest *digest = ssh_digest_by_alg(ctx->alg);
 u_int l = dlen;

 if (digest == ((void*)0) || dlen > UINT_MAX)
  return SSH_ERR_INVALID_ARGUMENT;
 if (dlen < digest->digest_len)
  return SSH_ERR_INVALID_ARGUMENT;
 if (EVP_DigestFinal_ex(ctx->mdctx, d, &l) != 1)
  return SSH_ERR_LIBCRYPTO_ERROR;
 if (l != digest->digest_len)
  return SSH_ERR_INTERNAL_ERROR;
 return 0;
}
