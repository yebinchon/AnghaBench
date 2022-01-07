
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct cache_page {int next; } ;
struct TYPE_4__ {struct cache_page* sentinel; } ;
typedef TYPE_1__ inprocess_cache_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int insert_page (TYPE_1__*,struct cache_page*) ;
 int remove_page_from_list (struct cache_page*) ;

__attribute__((used)) static svn_error_t *
move_page_to_front(inprocess_cache_t *cache,
                   struct cache_page *page)
{


  SVN_ERR_ASSERT(page != cache->sentinel);

  if (! page->next)
    return SVN_NO_ERROR;

  remove_page_from_list(page);
  insert_page(cache, page);

  return SVN_NO_ERROR;
}
