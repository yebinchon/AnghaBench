
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unused_pools; int mutex; } ;
typedef TYPE_1__ svn_root_pools__t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_allocator_owner_get (int ) ;
 int apr_array_make (int *,int,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_mutex__init (int *,int ,int *) ;
 int svn_pool_create_allocator (int ) ;

svn_error_t *
svn_root_pools__create(svn_root_pools__t **pools)
{


  apr_pool_t *pool
    = apr_allocator_owner_get(svn_pool_create_allocator(FALSE));


  svn_root_pools__t *result = apr_pcalloc(pool, sizeof(*result));
  SVN_ERR(svn_mutex__init(&result->mutex, TRUE, pool));
  result->unused_pools = apr_array_make(pool, 16, sizeof(apr_pool_t *));


  *pools = result;

  return SVN_NO_ERROR;
}
