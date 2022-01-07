
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int klen; int hash; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_get (int ,void const*,int ) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_has_key_internal(svn_boolean_t *found,
                                 inprocess_cache_t *cache,
                                 const void *key,
                                 apr_pool_t *scratch_pool)
{
  *found = apr_hash_get(cache->hash, key, cache->klen) != ((void*)0);

  return SVN_NO_ERROR;
}
