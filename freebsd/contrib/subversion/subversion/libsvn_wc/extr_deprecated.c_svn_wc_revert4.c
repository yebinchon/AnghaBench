
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_wc_revert5 (int *,char const*,int ,int ,int const*,int ,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_revert4(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_depth_t depth,
               svn_boolean_t use_commit_times,
               const apr_array_header_t *changelist_filter,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc_revert5(wc_ctx, local_abspath,
                                        depth,
                                        use_commit_times,
                                        changelist_filter,
                                        FALSE ,
                                        FALSE ,
                                        cancel_func, cancel_baton,
                                        notify_func, notify_baton,
                                        scratch_pool));
}
