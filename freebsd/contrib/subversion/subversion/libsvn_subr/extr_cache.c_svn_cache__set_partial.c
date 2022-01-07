
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int cache_internal; TYPE_1__* vtable; int writes; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_cache__partial_setter_func_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* set_partial ) (int ,void const*,int ,void*,int *) ;} ;


 int * handle_error (TYPE_2__*,int ,int *) ;
 int stub1 (int ,void const*,int ,void*,int *) ;

svn_error_t *
svn_cache__set_partial(svn_cache__t *cache,
                       const void *key,
                       svn_cache__partial_setter_func_t func,
                       void *baton,
                       apr_pool_t *scratch_pool)
{
  cache->writes++;
  return handle_error(cache,
                      (cache->vtable->set_partial)(cache->cache_internal,
                                                   key,
                                                   func,
                                                   baton,
                                                   scratch_pool),
                      scratch_pool);
}
