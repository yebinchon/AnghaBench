#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct cache_page {struct cache_entry* first_entry; int /*<<< orphan*/  page_pool; struct cache_page* prev; int /*<<< orphan*/ * next; } ;
struct cache_entry {scalar_t__ size; int /*<<< orphan*/  key; struct cache_entry* next_entry; struct cache_page* page; int /*<<< orphan*/ * value; } ;
struct TYPE_7__ {int items_per_page; scalar_t__ unallocated_pages; int partial_page_number_filled; struct cache_page* partial_page; int /*<<< orphan*/  klen; int /*<<< orphan*/  hash; int /*<<< orphan*/  data_size; int /*<<< orphan*/  (* serialize_func ) (int /*<<< orphan*/ **,scalar_t__*,void*,int /*<<< orphan*/ ) ;struct cache_page* sentinel; int /*<<< orphan*/  cache_pool; } ;
typedef  TYPE_1__ inprocess_cache_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct cache_entry* FUNC2 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cache_entry*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct cache_page*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct cache_page*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct cache_page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,scalar_t__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,scalar_t__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC12(inprocess_cache_t *cache,
                             const void *key,
                             void *value,
                             apr_pool_t *scratch_pool)
{
  struct cache_entry *existing_entry;

  existing_entry = FUNC2(cache->hash, key, cache->klen);

  /* Is it already here, but we can do the one-item-per-page
   * optimization? */
  if (existing_entry && cache->items_per_page == 1)
    {
      /* Special case!  ENTRY is the *only* entry on this page, so
       * why not wipe it (so as not to leak the previous value).
       */
      struct cache_page *page = existing_entry->page;

      /* This can't be the partial page: items_per_page == 1
       * *never* has a partial page (except for in the temporary state
       * that we're about to fake). */
      FUNC1(page->next != NULL);
      FUNC1(cache->partial_page == NULL);

      FUNC6(cache, page);
      existing_entry = NULL;
    }

  /* Is it already here, and we just have to leak the old value? */
  if (existing_entry)
    {
      struct cache_page *page = existing_entry->page;

      FUNC0(FUNC8(cache, page));
      cache->data_size -= existing_entry->size;
      if (value)
        {
          FUNC0(cache->serialize_func(&existing_entry->value,
                                        &existing_entry->size,
                                        value,
                                        page->page_pool));
          cache->data_size += existing_entry->size;
          if (existing_entry->size == 0)
            existing_entry->value = NULL;
        }
      else
        {
          existing_entry->value = NULL;
          existing_entry->size = 0;
        }

      return SVN_NO_ERROR;
    }

  /* Do we not have a partial page to put it on, but we are allowed to
   * allocate more? */
  if (cache->partial_page == NULL && cache->unallocated_pages > 0)
    {
      cache->partial_page = FUNC4(cache->cache_pool,
                                        sizeof(*(cache->partial_page)));
      cache->partial_page->page_pool = FUNC11(cache->cache_pool);
      cache->partial_page_number_filled = 0;
      (cache->unallocated_pages)--;
    }

  /* Do we really not have a partial page to put it on, even after the
   * one-item-per-page optimization and checking the unallocated page
   * count? */
  if (cache->partial_page == NULL)
    {
      struct cache_page *oldest_page = cache->sentinel->prev;

      FUNC1(oldest_page != cache->sentinel);

      /* Erase the page and put it in cache->partial_page. */
      FUNC6(cache, oldest_page);
    }

  FUNC1(cache->partial_page != NULL);

  {
    struct cache_page *page = cache->partial_page;
    struct cache_entry *new_entry = FUNC4(page->page_pool,
                                                sizeof(*new_entry));

    /* Copy the key and value into the page's pool.  */
    new_entry->key = FUNC5(cache, key, page->page_pool);
    if (value)
      {
        FUNC0(cache->serialize_func(&new_entry->value,
                                      &new_entry->size,
                                      value,
                                      page->page_pool));
        cache->data_size += new_entry->size;
        if (new_entry->size == 0)
          new_entry->value = NULL;
      }
    else
      {
        new_entry->value = NULL;
        new_entry->size = 0;
      }

    /* Add the entry to the page's list. */
    new_entry->page = page;
    new_entry->next_entry = page->first_entry;
    page->first_entry = new_entry;

    /* Add the entry to the hash, using the *entry's* copy of the
     * key. */
    FUNC3(cache->hash, new_entry->key, cache->klen, new_entry);

    /* We've added something else to the partial page. */
    (cache->partial_page_number_filled)++;

    /* Is it full? */
    if (cache->partial_page_number_filled >= cache->items_per_page)
      {
        FUNC7(cache, page);
        cache->partial_page = NULL;
      }
  }

  return SVN_NO_ERROR;
}