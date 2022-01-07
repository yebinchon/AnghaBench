
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; TYPE_2__* unused_pools; } ;
typedef TYPE_1__ svn_root_pools__t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_allocator_owner_get (int ) ;
 scalar_t__ apr_array_pop (TYPE_2__*) ;
 int svn_mutex__lock (int ) ;
 int svn_mutex__unlock (int ,int *) ;
 int svn_pool_create_allocator (int ) ;

__attribute__((used)) static svn_error_t *
acquire_pool_internal(apr_pool_t **pool,
                      svn_root_pools__t *pools)
{
  SVN_ERR(svn_mutex__lock(pools->mutex));
  *pool = pools->unused_pools->nelts
        ? *(apr_pool_t **)apr_array_pop(pools->unused_pools)
        : apr_allocator_owner_get(svn_pool_create_allocator(FALSE));
  SVN_ERR(svn_mutex__unlock(pools->mutex, SVN_NO_ERROR));

  return SVN_NO_ERROR;
}
