
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
typedef TYPE_1__ svn_membuffer_cache_t ;
typedef int svn_error_t ;
typedef int svn_cache__partial_setter_func_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int svn_membuffer_cache_set_partial (void*,void const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
svn_membuffer_cache_set_partial_synced(void *cache_void,
                                       const void *key,
                                       svn_cache__partial_setter_func_t func,
                                       void *baton,
                                       apr_pool_t *scratch_pool)
{
  svn_membuffer_cache_t *cache = cache_void;
  SVN_MUTEX__WITH_LOCK(cache->mutex,
                       svn_membuffer_cache_set_partial(cache_void,
                                                       key,
                                                       func,
                                                       baton,
                                                       scratch_pool));

  return SVN_NO_ERROR;
}
