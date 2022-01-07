
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnsc_env {int nonces_cache; int shared_secrets_cache; int nonces_cache_lock; int shared_secrets_cache_lock; int keypairs; int certs; int rotated_certs; int signed_certs; } ;


 int VERB_OPS ;
 int free (struct dnsc_env*) ;
 int lock_basic_destroy (int *) ;
 int slabhash_delete (int ) ;
 int sodium_free (int ) ;
 int verbose (int ,char*) ;

void
dnsc_delete(struct dnsc_env *env)
{
 if(!env) {
  return;
 }
 verbose(VERB_OPS, "DNSCrypt: Freeing environment.");
 sodium_free(env->signed_certs);
 sodium_free(env->rotated_certs);
 sodium_free(env->certs);
 sodium_free(env->keypairs);
 lock_basic_destroy(&env->shared_secrets_cache_lock);
 lock_basic_destroy(&env->nonces_cache_lock);
 slabhash_delete(env->shared_secrets_cache);
 slabhash_delete(env->nonces_cache);
 free(env);
}
