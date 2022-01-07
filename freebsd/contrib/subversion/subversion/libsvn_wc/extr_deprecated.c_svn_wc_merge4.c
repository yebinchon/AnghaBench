
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_resolver_func2_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_wc_merge5 (int*,int *,int *,char const*,char const*,char const*,char const*,char const*,char const*,int const*,int const*,int ,char const*,int const*,int *,int const*,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_merge4(enum svn_wc_merge_outcome_t *merge_outcome,
              svn_wc_context_t *wc_ctx,
              const char *left_abspath,
              const char *right_abspath,
              const char *target_abspath,
              const char *left_label,
              const char *right_label,
              const char *target_label,
              const svn_wc_conflict_version_t *left_version,
              const svn_wc_conflict_version_t *right_version,
              svn_boolean_t dry_run,
              const char *diff3_cmd,
              const apr_array_header_t *merge_options,
              const apr_array_header_t *prop_diff,
              svn_wc_conflict_resolver_func2_t conflict_func,
              void *conflict_baton,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            svn_wc_merge5(merge_outcome,
                          ((void*)0) ,
                          wc_ctx,
                          left_abspath,
                          right_abspath,
                          target_abspath,
                          left_label,
                          right_label,
                          target_label,
                          left_version,
                          right_version,
                          dry_run,
                          diff3_cmd,
                          merge_options,
                          ((void*)0) ,
                          prop_diff,
                          conflict_func, conflict_baton,
                          cancel_func, cancel_baton,
                          scratch_pool));
}
