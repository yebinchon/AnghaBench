
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnsc_env {int num_query_dnscrypt_replay; int nonces_cache_lock; int nonces_cache; int num_query_dnscrypt_secret_missed_cache; int shared_secrets_cache_lock; } ;


 scalar_t__ calloc (int,int) ;
 int fatal_exit (char*) ;
 int lock_basic_init (int *) ;
 int lock_protect (int *,int *,int) ;
 int sodium_init () ;
 int sodium_misuse_handler ;
 int sodium_set_misuse_handler (int ) ;

struct dnsc_env *
dnsc_create(void)
{
 struct dnsc_env *env;



 if (sodium_init() == -1) {
  fatal_exit("dnsc_create: could not initialize libsodium.");
 }
 env = (struct dnsc_env *) calloc(1, sizeof(struct dnsc_env));
 lock_basic_init(&env->shared_secrets_cache_lock);
 lock_protect(&env->shared_secrets_cache_lock,
                 &env->num_query_dnscrypt_secret_missed_cache,
                 sizeof(env->num_query_dnscrypt_secret_missed_cache));
 lock_basic_init(&env->nonces_cache_lock);
 lock_protect(&env->nonces_cache_lock,
                 &env->nonces_cache,
                 sizeof(env->nonces_cache));
 lock_protect(&env->nonces_cache_lock,
                 &env->num_query_dnscrypt_replay,
                 sizeof(env->num_query_dnscrypt_replay));

 return env;
}
