
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_sha_ctx {void* psc_buf; int psc_size; int psc_offset; } ;
struct auth_hash {scalar_t__ type; int ctxsize; } ;


 scalar_t__ CRYPTO_SHA1_HMAC ;
 scalar_t__ CRYPTO_SHA2_256_HMAC ;
 int M_PADLOCK ;
 int M_WAITOK ;
 int VIA_HAS_SHA ;
 int bcopy (void*,void*,int ) ;
 void* malloc (int ,int ,int ) ;
 int via_feature_xcrypt ;

__attribute__((used)) static void
padlock_copy_ctx(struct auth_hash *axf, void *sctx, void *dctx)
{

 if ((via_feature_xcrypt & VIA_HAS_SHA) != 0 &&
     (axf->type == CRYPTO_SHA1_HMAC ||
      axf->type == CRYPTO_SHA2_256_HMAC)) {
  struct padlock_sha_ctx *spctx = sctx, *dpctx = dctx;

  dpctx->psc_offset = spctx->psc_offset;
  dpctx->psc_size = spctx->psc_size;
  dpctx->psc_buf = malloc(dpctx->psc_size, M_PADLOCK, M_WAITOK);
  bcopy(spctx->psc_buf, dpctx->psc_buf, dpctx->psc_size);
 } else {
  bcopy(sctx, dctx, axf->ctxsize);
 }
}
