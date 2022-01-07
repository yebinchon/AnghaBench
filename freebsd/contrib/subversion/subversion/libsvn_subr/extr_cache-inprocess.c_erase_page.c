
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cache_page {int * next; int * prev; struct cache_entry* first_entry; int page_pool; } ;
struct cache_entry {int key; scalar_t__ size; struct cache_entry* next_entry; } ;
struct TYPE_3__ {scalar_t__ partial_page_number_filled; struct cache_page* partial_page; int klen; int hash; int data_size; } ;
typedef TYPE_1__ inprocess_cache_t ;


 int apr_hash_set (int ,int ,int ,int *) ;
 int remove_page_from_list (struct cache_page*) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static void
erase_page(inprocess_cache_t *cache,
           struct cache_page *page)
{
  struct cache_entry *e;

  remove_page_from_list(page);

  for (e = page->first_entry;
       e;
       e = e->next_entry)
    {
      cache->data_size -= e->size;
      apr_hash_set(cache->hash, e->key, cache->klen, ((void*)0));
    }

  svn_pool_clear(page->page_pool);

  page->first_entry = ((void*)0);
  page->prev = ((void*)0);
  page->next = ((void*)0);

  cache->partial_page = page;
  cache->partial_page_number_filled = 0;
}
