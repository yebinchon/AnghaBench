
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cache_page {struct cache_page* prev; struct cache_page* next; } ;
struct TYPE_3__ {struct cache_page* sentinel; } ;
typedef TYPE_1__ inprocess_cache_t ;



__attribute__((used)) static void
insert_page(inprocess_cache_t *cache,
            struct cache_page *page)
{
  struct cache_page *pred = cache->sentinel;

  page->prev = pred;
  page->next = pred->next;
  page->prev->next = page;
  page->next->prev = page;
}
