
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct padlock_sha_ctx {int psc_offset; int psc_buf; } ;


 int padlock_do_sha256 (int ,int *,int ) ;
 int padlock_sha_free (struct padlock_sha_ctx*) ;

__attribute__((used)) static void
padlock_sha256_final(uint8_t *hash, struct padlock_sha_ctx *ctx)
{

 padlock_do_sha256(ctx->psc_buf, hash, ctx->psc_offset);
 padlock_sha_free(ctx);
}
