
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int abort_on_pool_failure ;
 int apr_pool_create_unmanaged_ex (int **,int ,int ) ;
 int svn_pool_create_allocator (int ) ;

apr_pool_t *
svn_pool__create_unmanaged(svn_boolean_t thread_safe)
{
  apr_pool_t *pool;
  apr_pool_create_unmanaged_ex(&pool, abort_on_pool_failure,
                               svn_pool_create_allocator(thread_safe));
  return pool;
}
