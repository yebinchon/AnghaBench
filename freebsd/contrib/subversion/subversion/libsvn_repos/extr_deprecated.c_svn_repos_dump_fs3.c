
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_repos_dump_fs4 (int *,int *,int ,int ,int ,int ,int ,int ,int ,void*,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_repos_dump_fs3(svn_repos_t *repos,
                   svn_stream_t *stream,
                   svn_revnum_t start_rev,
                   svn_revnum_t end_rev,
                   svn_boolean_t incremental,
                   svn_boolean_t use_deltas,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_repos_dump_fs4(repos,
                                            stream,
                                            start_rev,
                                            end_rev,
                                            incremental,
                                            use_deltas,
                                            TRUE,
                                            TRUE,
                                            notify_func,
                                            notify_baton,
                                            ((void*)0), ((void*)0),
                                            cancel_func,
                                            cancel_baton,
                                            pool));
}
