
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int MAX_THREADS ;
 int * SVN_NO_ERROR ;
 int THREADPOOL_THREAD_IDLE_LIMIT ;
 int WRAP_APR_ERR (int ,int ) ;
 int _ (char*) ;
 int apr_pool_pre_cleanup_register (int *,int *,int ) ;
 int apr_thread_pool_create (int *,int ,int ,int *) ;
 int apr_thread_pool_idle_wait_set (int ,int ) ;
 int apr_thread_pool_threshold_set (int ,int ) ;
 int * svn_pool_create (int *) ;
 int thread_pool ;
 int thread_pool_pre_cleanup ;

__attribute__((used)) static svn_error_t *
create_thread_pool(void *baton,
                   apr_pool_t *owning_pool)
{
  return SVN_NO_ERROR;
}
