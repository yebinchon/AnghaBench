
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int cache_internal; TYPE_1__* vtable; scalar_t__ pretend_empty; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* has_key ) (int *,int ,void const*,int *) ;} ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int * handle_error (TYPE_2__*,int ,int *) ;
 int stub1 (int *,int ,void const*,int *) ;

svn_error_t *
svn_cache__has_key(svn_boolean_t *found,
                   svn_cache__t *cache,
                   const void *key,
                   apr_pool_t *scratch_pool)
{
  *found = FALSE;





  return handle_error(cache,
                      (cache->vtable->has_key)(found,
                                               cache->cache_internal,
                                               key,
                                               scratch_pool),
                      scratch_pool);
}
