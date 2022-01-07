
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_iter_apr_hash_cb_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int cache_internal; TYPE_1__* vtable; scalar_t__ pretend_empty; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * (* iter ) (int *,int ,int ,void*,int *) ;} ;


 int * SVN_NO_ERROR ;
 int * stub1 (int *,int ,int ,void*,int *) ;

svn_error_t *
svn_cache__iter(svn_boolean_t *completed,
                svn_cache__t *cache,
                svn_iter_apr_hash_cb_t user_cb,
                void *user_baton,
                apr_pool_t *scratch_pool)
{






  return (cache->vtable->iter)(completed,
                               cache->cache_internal,
                               user_cb,
                               user_baton,
                               scratch_pool);
}
