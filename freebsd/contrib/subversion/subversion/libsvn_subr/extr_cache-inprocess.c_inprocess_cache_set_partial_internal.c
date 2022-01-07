
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int (* svn_cache__partial_setter_func_t ) (int *,scalar_t__*,void*,int ) ;
struct cache_entry {scalar_t__ size; TYPE_3__* page; int value; } ;
struct TYPE_5__ {int data_size; int klen; int hash; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int page_pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct cache_entry* apr_hash_get (int ,void const*,int ) ;
 int move_page_to_front (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_set_partial_internal(inprocess_cache_t *cache,
                                     const void *key,
                                     svn_cache__partial_setter_func_t func,
                                     void *baton,
                                     apr_pool_t *scratch_pool)
{
  struct cache_entry *entry = apr_hash_get(cache->hash, key, cache->klen);
  if (entry)
    {
      SVN_ERR(move_page_to_front(cache, entry->page));

      cache->data_size -= entry->size;
      SVN_ERR(func(&entry->value,
                   &entry->size,
                   baton,
                   entry->page->page_pool));
      cache->data_size += entry->size;
    }

  return SVN_NO_ERROR;
}
