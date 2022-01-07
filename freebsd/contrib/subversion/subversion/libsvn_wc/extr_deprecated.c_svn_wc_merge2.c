
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_wc_merge3 (int*,char const*,char const*,char const*,int *,char const*,char const*,char const*,int ,char const*,int const*,int *,int *,int *,int *) ;

svn_error_t *
svn_wc_merge2(enum svn_wc_merge_outcome_t *merge_outcome,
              const char *left,
              const char *right,
              const char *merge_target,
              svn_wc_adm_access_t *adm_access,
              const char *left_label,
              const char *right_label,
              const char *target_label,
              svn_boolean_t dry_run,
              const char *diff3_cmd,
              const apr_array_header_t *merge_options,
              apr_pool_t *pool)
{
  return svn_wc_merge3(merge_outcome,
                       left, right, merge_target, adm_access,
                       left_label, right_label, target_label,
                       dry_run, diff3_cmd, merge_options, ((void*)0),
                       ((void*)0), ((void*)0), pool);
}
