
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_6__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_INVALID_OPERATION_DEPTH ;
 int revert (int ,char const*,scalar_t__,int ,int ,int ,int ,void*,int ,void*,int *) ;
 int revert_changelist (int ,char const*,scalar_t__,int ,int *,int ,int ,int ,void*,int ,void*,int *) ;
 int revert_partial (int ,char const*,scalar_t__,int ,int ,int ,int ,void*,int ,void*,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_from_cstring_keys (int **,TYPE_2__ const*,int *) ;

svn_error_t *
svn_wc_revert5(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_depth_t depth,
               svn_boolean_t use_commit_times,
               const apr_array_header_t *changelist_filter,
               svn_boolean_t clear_changelists,
               svn_boolean_t metadata_only,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  if (changelist_filter && changelist_filter->nelts)
    {
      apr_hash_t *changelist_hash;

      SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash, changelist_filter,
                                         scratch_pool));
      return svn_error_trace(revert_changelist(wc_ctx->db, local_abspath,
                                               depth, use_commit_times,
                                               changelist_hash,
                                               clear_changelists,
                                               metadata_only,
                                               cancel_func, cancel_baton,
                                               notify_func, notify_baton,
                                               scratch_pool));
    }

  if (depth == svn_depth_empty || depth == svn_depth_infinity)
    return svn_error_trace(revert(wc_ctx->db, local_abspath,
                                  depth, use_commit_times, clear_changelists,
                                  metadata_only,
                                  cancel_func, cancel_baton,
                                  notify_func, notify_baton,
                                  scratch_pool));







  if (depth == svn_depth_files || depth == svn_depth_immediates)
    return svn_error_trace(revert_partial(wc_ctx->db, local_abspath,
                                          depth, use_commit_times,
                                          clear_changelists, metadata_only,
                                          cancel_func, cancel_baton,
                                          notify_func, notify_baton,
                                          scratch_pool));


  return svn_error_create(SVN_ERR_WC_INVALID_OPERATION_DEPTH, ((void*)0), ((void*)0));
}
