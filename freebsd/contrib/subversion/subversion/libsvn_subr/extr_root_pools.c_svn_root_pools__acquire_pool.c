
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_root_pools__t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * acquire_pool_internal (int **,int *) ;
 int * apr_allocator_owner_get (int ) ;
 int svn_error_clear (int *) ;
 int svn_pool_create_allocator (int ) ;

apr_pool_t *
svn_root_pools__acquire_pool(svn_root_pools__t *pools)
{
  apr_pool_t *pool;
  svn_error_t *err = acquire_pool_internal(&pool, pools);
  if (err)
    {

      svn_error_clear(err);
      pool = apr_allocator_owner_get(svn_pool_create_allocator(FALSE));
    }

  return pool;
}
