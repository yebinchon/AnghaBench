
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef scalar_t__ svn_wc_conflict_resolver_func_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct conflict_func_1to2_baton {void* inner_baton; scalar_t__ inner_func; } ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * conflict_func_1to2_wrapper ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_merge4 (int*,int *,char const*,char const*,char const*,char const*,char const*,char const*,int *,int *,int ,char const*,int const*,int const*,int *,struct conflict_func_1to2_baton*,int *,int *,int *) ;

svn_error_t *
svn_wc_merge3(enum svn_wc_merge_outcome_t *merge_outcome,
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
              const apr_array_header_t *prop_diff,
              svn_wc_conflict_resolver_func_t conflict_func,
              void *conflict_baton,
              apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
  const char *left_abspath, *right_abspath, *target_abspath;
  struct conflict_func_1to2_baton cfw;

  SVN_ERR(svn_dirent_get_absolute(&left_abspath, left, pool));
  SVN_ERR(svn_dirent_get_absolute(&right_abspath, right, pool));
  SVN_ERR(svn_dirent_get_absolute(&target_abspath, merge_target, pool));

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) , db, pool));

  cfw.inner_func = conflict_func;
  cfw.inner_baton = conflict_baton;

  if (diff3_cmd)
    SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, pool));

  SVN_ERR(svn_wc_merge4(merge_outcome,
                        wc_ctx,
                        left_abspath,
                        right_abspath,
                        target_abspath,
                        left_label,
                        right_label,
                        target_label,
                        ((void*)0),
                        ((void*)0),
                        dry_run,
                        diff3_cmd,
                        merge_options,
                        prop_diff,
                        conflict_func ? conflict_func_1to2_wrapper : ((void*)0),
                        &cfw,
                        ((void*)0), ((void*)0),
                        pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
