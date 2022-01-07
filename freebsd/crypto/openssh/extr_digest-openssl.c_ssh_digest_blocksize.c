
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest_ctx {int mdctx; } ;


 size_t EVP_MD_CTX_block_size (int ) ;

size_t
ssh_digest_blocksize(struct ssh_digest_ctx *ctx)
{
 return EVP_MD_CTX_block_size(ctx->mdctx);
}
