
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int cache_internal; TYPE_1__* vtable; int writes; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* set ) (int ,void const*,void*,int *) ;} ;


 int * handle_error (TYPE_2__*,int ,int *) ;
 int stub1 (int ,void const*,void*,int *) ;

svn_error_t *
svn_cache__set(svn_cache__t *cache,
               const void *key,
               void *value,
               apr_pool_t *scratch_pool)
{
  cache->writes++;
  return handle_error(cache,
                      (cache->vtable->set)(cache->cache_internal,
                                           key,
                                           value,
                                           scratch_pool),
                      scratch_pool);
}
