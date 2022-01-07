
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int * (* svn_cache__partial_getter_func_t ) (void**,int ,int ,void*,int *) ;
typedef int svn_boolean_t ;
struct cache_entry {int size; int value; int page; } ;
struct TYPE_4__ {int klen; int hash; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 struct cache_entry* apr_hash_get (int ,void const*,int ) ;
 int move_page_to_front (TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_get_partial_internal(void **value_p,
                                     svn_boolean_t *found,
                                     inprocess_cache_t *cache,
                                     const void *key,
                                     svn_cache__partial_getter_func_t func,
                                     void *baton,
                                     apr_pool_t *result_pool)
{
  struct cache_entry *entry = apr_hash_get(cache->hash, key, cache->klen);
  if (! entry)
    {
      *found = FALSE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(move_page_to_front(cache, entry->page));

  *found = TRUE;
  return func(value_p, entry->value, entry->size, baton, result_pool);
}
