
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_allocator_t ;


 int * svn_pool_create_ex (int *,int *) ;

apr_pool_t *
svn_pool_create_ex_debug(apr_pool_t *pool, apr_allocator_t *allocator,
                         const char *file_line)
{
  return svn_pool_create_ex(pool, allocator);
}
