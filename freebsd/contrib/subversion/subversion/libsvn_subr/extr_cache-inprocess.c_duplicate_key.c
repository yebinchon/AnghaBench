
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ klen; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_HASH_KEY_STRING ;
 void const* apr_pmemdup (int *,void const*,scalar_t__) ;
 void const* apr_pstrdup (int *,void const*) ;

__attribute__((used)) static const void *
duplicate_key(inprocess_cache_t *cache,
              const void *key,
              apr_pool_t *pool)
{
  if (cache->klen == APR_HASH_KEY_STRING)
    return apr_pstrdup(pool, key);
  else
    return apr_pmemdup(pool, key, cache->klen);
}
