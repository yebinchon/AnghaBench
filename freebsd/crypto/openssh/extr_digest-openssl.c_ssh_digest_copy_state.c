
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest_ctx {scalar_t__ alg; int mdctx; } ;


 int EVP_MD_CTX_copy_ex (int ,int ) ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

int
ssh_digest_copy_state(struct ssh_digest_ctx *from, struct ssh_digest_ctx *to)
{
 if (from->alg != to->alg)
  return SSH_ERR_INVALID_ARGUMENT;

 if (!EVP_MD_CTX_copy_ex(to->mdctx, from->mdctx))
  return SSH_ERR_LIBCRYPTO_ERROR;
 return 0;
}
