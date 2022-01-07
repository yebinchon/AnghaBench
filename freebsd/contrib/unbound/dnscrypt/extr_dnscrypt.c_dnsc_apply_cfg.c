
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnsc_env {int nonces_cache_lock; void* nonces_cache; void* shared_secrets_cache; int shared_secrets_cache_lock; int provider_name; int hash_key; } ;
struct config_file {int dnscrypt_nonce_cache_size; int dnscrypt_nonce_cache_slabs; int dnscrypt_shared_secret_cache_size; int dnscrypt_shared_secret_cache_slabs; int dnscrypt_provider; } ;


 int HASH_DEFAULT_STARTARRAY ;
 scalar_t__ dnsc_load_local_data (struct dnsc_env*,struct config_file*) ;
 int dnsc_nonces_compfunc ;
 int dnsc_nonces_deldatafunc ;
 int dnsc_nonces_delkeyfunc ;
 int dnsc_nonces_sizefunc ;
 scalar_t__ dnsc_parse_certs (struct dnsc_env*,struct config_file*) ;
 scalar_t__ dnsc_parse_keys (struct dnsc_env*,struct config_file*) ;
 int dnsc_shared_secrets_compfunc ;
 int dnsc_shared_secrets_deldatafunc ;
 int dnsc_shared_secrets_delkeyfunc ;
 int dnsc_shared_secrets_sizefunc ;
 int fatal_exit (char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int randombytes_buf (int ,int) ;
 void* slabhash_create (int ,int ,int ,int ,int ,int ,int ,int *) ;

int
dnsc_apply_cfg(struct dnsc_env *env, struct config_file *cfg)
{
    if(dnsc_parse_certs(env, cfg) <= 0) {
        fatal_exit("dnsc_apply_cfg: no cert file loaded");
    }
    if(dnsc_parse_keys(env, cfg) <= 0) {
        fatal_exit("dnsc_apply_cfg: no key file loaded");
    }
    randombytes_buf(env->hash_key, sizeof env->hash_key);
    env->provider_name = cfg->dnscrypt_provider;

    if(dnsc_load_local_data(env, cfg) <= 0) {
        fatal_exit("dnsc_apply_cfg: could not load local data");
    }
    lock_basic_lock(&env->shared_secrets_cache_lock);
    env->shared_secrets_cache = slabhash_create(
        cfg->dnscrypt_shared_secret_cache_slabs,
        HASH_DEFAULT_STARTARRAY,
        cfg->dnscrypt_shared_secret_cache_size,
        dnsc_shared_secrets_sizefunc,
        dnsc_shared_secrets_compfunc,
        dnsc_shared_secrets_delkeyfunc,
        dnsc_shared_secrets_deldatafunc,
        ((void*)0)
    );
    lock_basic_unlock(&env->shared_secrets_cache_lock);
    if(!env->shared_secrets_cache){
        fatal_exit("dnsc_apply_cfg: could not create shared secrets cache.");
    }
    lock_basic_lock(&env->nonces_cache_lock);
    env->nonces_cache = slabhash_create(
        cfg->dnscrypt_nonce_cache_slabs,
        HASH_DEFAULT_STARTARRAY,
        cfg->dnscrypt_nonce_cache_size,
        dnsc_nonces_sizefunc,
        dnsc_nonces_compfunc,
        dnsc_nonces_delkeyfunc,
        dnsc_nonces_deldatafunc,
        ((void*)0)
    );
    lock_basic_unlock(&env->nonces_cache_lock);
    return 0;
}
