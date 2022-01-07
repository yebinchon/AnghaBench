
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int hits; int cache_internal; TYPE_1__* vtable; int reads; scalar_t__ pretend_empty; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_cache__partial_getter_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_partial ) (void**,scalar_t__*,int ,void const*,int ,void*,int *) ;} ;


 scalar_t__ FALSE ;
 int * SVN_NO_ERROR ;
 int * handle_error (TYPE_2__*,int ,int *) ;
 int stub1 (void**,scalar_t__*,int ,void const*,int ,void*,int *) ;

svn_error_t *
svn_cache__get_partial(void **value,
                       svn_boolean_t *found,
                       svn_cache__t *cache,
                       const void *key,
                       svn_cache__partial_getter_func_t func,
                       void *baton,
                       apr_pool_t *result_pool)
{
  svn_error_t *err;



  *found = FALSE;





  cache->reads++;
  err = handle_error(cache,
                     (cache->vtable->get_partial)(value,
                                                  found,
                                                  cache->cache_internal,
                                                  key,
                                                  func,
                                                  baton,
                                                  result_pool),
                     result_pool);

  if (*found)
    cache->hits++;

  return err;
}
