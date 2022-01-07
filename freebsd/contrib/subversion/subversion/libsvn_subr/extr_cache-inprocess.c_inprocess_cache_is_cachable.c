
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_2__ {int items_per_page; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_size_t ;


 int SVN_ALLOCATOR_RECOMMENDED_MAX_FREE ;

__attribute__((used)) static svn_boolean_t
inprocess_cache_is_cachable(void *cache_void, apr_size_t size)
{





  inprocess_cache_t *cache = cache_void;
  return size < SVN_ALLOCATOR_RECOMMENDED_MAX_FREE / cache->items_per_page;
}
