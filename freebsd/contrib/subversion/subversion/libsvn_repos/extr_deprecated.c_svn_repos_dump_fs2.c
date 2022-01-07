
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * repos_notify_handler ;
 int * svn_error_trace (int ) ;
 int svn_repos_dump_fs3 (int *,int *,int ,int ,int ,int ,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_repos_dump_fs2(svn_repos_t *repos,
                   svn_stream_t *stream,
                   svn_stream_t *feedback_stream,
                   svn_revnum_t start_rev,
                   svn_revnum_t end_rev,
                   svn_boolean_t incremental,
                   svn_boolean_t use_deltas,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_repos_dump_fs3(repos,
                                            stream,
                                            start_rev,
                                            end_rev,
                                            incremental,
                                            use_deltas,
                                            feedback_stream
                                              ? repos_notify_handler
                                              : ((void*)0),
                                            feedback_stream,
                                            cancel_func,
                                            cancel_baton,
                                            pool));
}
