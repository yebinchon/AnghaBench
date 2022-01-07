
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_hash {scalar_t__ type; } ;


 scalar_t__ CRYPTO_SHA1_HMAC ;
 scalar_t__ CRYPTO_SHA2_256_HMAC ;
 int VIA_HAS_SHA ;
 int padlock_sha_free (void*) ;
 int via_feature_xcrypt ;

__attribute__((used)) static void
padlock_free_ctx(struct auth_hash *axf, void *ctx)
{

 if ((via_feature_xcrypt & VIA_HAS_SHA) != 0 &&
     (axf->type == CRYPTO_SHA1_HMAC ||
      axf->type == CRYPTO_SHA2_256_HMAC)) {
  padlock_sha_free(ctx);
 }
}
