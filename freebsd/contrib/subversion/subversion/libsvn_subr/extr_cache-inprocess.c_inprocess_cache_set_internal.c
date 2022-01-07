
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct cache_page {struct cache_entry* first_entry; int page_pool; struct cache_page* prev; int * next; } ;
struct cache_entry {scalar_t__ size; int key; struct cache_entry* next_entry; struct cache_page* page; int * value; } ;
struct TYPE_7__ {int items_per_page; scalar_t__ unallocated_pages; int partial_page_number_filled; struct cache_page* partial_page; int klen; int hash; int data_size; int (* serialize_func ) (int **,scalar_t__*,void*,int ) ;struct cache_page* sentinel; int cache_pool; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 struct cache_entry* apr_hash_get (int ,void const*,int ) ;
 int apr_hash_set (int ,int ,int ,struct cache_entry*) ;
 void* apr_pcalloc (int ,int) ;
 int duplicate_key (TYPE_1__*,void const*,int ) ;
 int erase_page (TYPE_1__*,struct cache_page*) ;
 int insert_page (TYPE_1__*,struct cache_page*) ;
 int move_page_to_front (TYPE_1__*,struct cache_page*) ;
 int stub1 (int **,scalar_t__*,void*,int ) ;
 int stub2 (int **,scalar_t__*,void*,int ) ;
 int svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_set_internal(inprocess_cache_t *cache,
                             const void *key,
                             void *value,
                             apr_pool_t *scratch_pool)
{
  struct cache_entry *existing_entry;

  existing_entry = apr_hash_get(cache->hash, key, cache->klen);



  if (existing_entry && cache->items_per_page == 1)
    {



      struct cache_page *page = existing_entry->page;




      SVN_ERR_ASSERT(page->next != ((void*)0));
      SVN_ERR_ASSERT(cache->partial_page == ((void*)0));

      erase_page(cache, page);
      existing_entry = ((void*)0);
    }


  if (existing_entry)
    {
      struct cache_page *page = existing_entry->page;

      SVN_ERR(move_page_to_front(cache, page));
      cache->data_size -= existing_entry->size;
      if (value)
        {
          SVN_ERR(cache->serialize_func(&existing_entry->value,
                                        &existing_entry->size,
                                        value,
                                        page->page_pool));
          cache->data_size += existing_entry->size;
          if (existing_entry->size == 0)
            existing_entry->value = ((void*)0);
        }
      else
        {
          existing_entry->value = ((void*)0);
          existing_entry->size = 0;
        }

      return SVN_NO_ERROR;
    }



  if (cache->partial_page == ((void*)0) && cache->unallocated_pages > 0)
    {
      cache->partial_page = apr_pcalloc(cache->cache_pool,
                                        sizeof(*(cache->partial_page)));
      cache->partial_page->page_pool = svn_pool_create(cache->cache_pool);
      cache->partial_page_number_filled = 0;
      (cache->unallocated_pages)--;
    }




  if (cache->partial_page == ((void*)0))
    {
      struct cache_page *oldest_page = cache->sentinel->prev;

      SVN_ERR_ASSERT(oldest_page != cache->sentinel);


      erase_page(cache, oldest_page);
    }

  SVN_ERR_ASSERT(cache->partial_page != ((void*)0));

  {
    struct cache_page *page = cache->partial_page;
    struct cache_entry *new_entry = apr_pcalloc(page->page_pool,
                                                sizeof(*new_entry));


    new_entry->key = duplicate_key(cache, key, page->page_pool);
    if (value)
      {
        SVN_ERR(cache->serialize_func(&new_entry->value,
                                      &new_entry->size,
                                      value,
                                      page->page_pool));
        cache->data_size += new_entry->size;
        if (new_entry->size == 0)
          new_entry->value = ((void*)0);
      }
    else
      {
        new_entry->value = ((void*)0);
        new_entry->size = 0;
      }


    new_entry->page = page;
    new_entry->next_entry = page->first_entry;
    page->first_entry = new_entry;



    apr_hash_set(cache->hash, new_entry->key, cache->klen, new_entry);


    (cache->partial_page_number_filled)++;


    if (cache->partial_page_number_filled >= cache->items_per_page)
      {
        insert_page(cache, page);
        cache->partial_page = ((void*)0);
      }
  }

  return SVN_NO_ERROR;
}
