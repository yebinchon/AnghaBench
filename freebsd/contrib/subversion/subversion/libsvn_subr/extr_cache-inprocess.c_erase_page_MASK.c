#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cache_page {int /*<<< orphan*/ * next; int /*<<< orphan*/ * prev; struct cache_entry* first_entry; int /*<<< orphan*/  page_pool; } ;
struct cache_entry {int /*<<< orphan*/  key; scalar_t__ size; struct cache_entry* next_entry; } ;
struct TYPE_3__ {scalar_t__ partial_page_number_filled; struct cache_page* partial_page; int /*<<< orphan*/  klen; int /*<<< orphan*/  hash; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ inprocess_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(inprocess_cache_t *cache,
           struct cache_page *page)
{
  struct cache_entry *e;

  FUNC1(page);

  for (e = page->first_entry;
       e;
       e = e->next_entry)
    {
      cache->data_size -= e->size;
      FUNC0(cache->hash, e->key, cache->klen, NULL);
    }

  FUNC2(page->page_pool);

  page->first_entry = NULL;
  page->prev = NULL;
  page->next = NULL;

  cache->partial_page = page;
  cache->partial_page_number_filled = 0;
}