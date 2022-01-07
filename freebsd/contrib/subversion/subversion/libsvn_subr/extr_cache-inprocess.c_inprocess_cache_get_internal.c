
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct cache_entry {scalar_t__ size; int value; int page; } ;
struct TYPE_4__ {int klen; int hash; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct cache_entry* apr_hash_get (int ,void const*,int ) ;
 char* apr_palloc (int *,scalar_t__) ;
 int memcpy (char*,int ,scalar_t__) ;
 int move_page_to_front (TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_get_internal(char **buffer,
                             apr_size_t *size,
                             inprocess_cache_t *cache,
                             const void *key,
                             apr_pool_t *result_pool)
{
  struct cache_entry *entry = apr_hash_get(cache->hash, key, cache->klen);

  if (entry)
    {
      SVN_ERR(move_page_to_front(cache, entry->page));


      *buffer = apr_palloc(result_pool, entry->size);
      if (entry->size)
        memcpy(*buffer, entry->value, entry->size);

      *size = entry->size;
    }
  else
    {
      *buffer = ((void*)0);
      *size = 0;
    }

  return SVN_NO_ERROR;
}
