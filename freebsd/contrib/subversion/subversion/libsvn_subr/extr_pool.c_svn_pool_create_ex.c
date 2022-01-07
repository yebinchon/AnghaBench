
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_allocator_t ;


 int abort_on_pool_failure ;
 int apr_pool_create_ex (int **,int *,int ,int *) ;

apr_pool_t *
svn_pool_create_ex(apr_pool_t *parent_pool, apr_allocator_t *allocator)
{
  apr_pool_t *pool;
  apr_pool_create_ex(&pool, parent_pool, abort_on_pool_failure, allocator);
  return pool;
}
