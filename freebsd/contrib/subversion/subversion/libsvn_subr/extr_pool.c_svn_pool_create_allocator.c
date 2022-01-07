
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;
typedef int apr_thread_mutex_t ;
typedef int apr_pool_t ;
typedef int apr_allocator_t ;


 int APR_THREAD_MUTEX_DEFAULT ;
 int EXIT_FAILURE ;
 int SVN_ALLOCATOR_RECOMMENDED_MAX_FREE ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int abort_on_pool_failure (int ) ;
 scalar_t__ apr_allocator_create (int **) ;
 int apr_allocator_max_free_set (int *,int ) ;
 int apr_allocator_mutex_set (int *,int *) ;
 int apr_allocator_owner_set (int *,int *) ;
 int apr_pool_tag (int *,char*) ;
 int apr_thread_mutex_create (int **,int ,int *) ;
 int * svn_pool_create_ex (int *,int *) ;

apr_allocator_t *
svn_pool_create_allocator(svn_boolean_t thread_safe)
{
  apr_allocator_t *allocator;
  apr_pool_t *pool;




  if (apr_allocator_create(&allocator))
    abort_on_pool_failure(EXIT_FAILURE);

  apr_allocator_max_free_set(allocator, SVN_ALLOCATOR_RECOMMENDED_MAX_FREE);



  pool = svn_pool_create_ex(((void*)0), allocator);
  apr_allocator_owner_set(allocator, pool);
  SVN_ERR_ASSERT_NO_RETURN(allocator != ((void*)0));

  return allocator;
}
