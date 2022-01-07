
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int create_thread_pool ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int thread_pool_initialized ;

svn_error_t *
svn_fs_x__batch_fsync_init(apr_pool_t *owning_pool)
{

  return svn_error_trace(svn_atomic__init_once(&thread_pool_initialized,
                                               create_thread_pool,
                                               ((void*)0), owning_pool));
}
