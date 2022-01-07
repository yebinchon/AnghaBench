
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_external_update_t ;
typedef int svn_wc_dirents_func_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_conflict_resolver_func2_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__get_update_editor (int const**,void**,int *,int *,char const*,char const*,int *,int ,int ,int ,int ,int ,int ,int ,char const*,int const*,int ,void*,int ,void*,int ,void*,int ,void*,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_get_update_editor4(const svn_delta_editor_t **editor,
                          void **edit_baton,
                          svn_revnum_t *target_revision,
                          svn_wc_context_t *wc_ctx,
                          const char *anchor_abspath,
                          const char *target_basename,
                          svn_boolean_t use_commit_times,
                          svn_depth_t depth,
                          svn_boolean_t depth_is_sticky,
                          svn_boolean_t allow_unver_obstructions,
                          svn_boolean_t adds_as_modification,
                          svn_boolean_t server_performs_filtering,
                          svn_boolean_t clean_checkout,
                          const char *diff3_cmd,
                          const apr_array_header_t *preserved_exts,
                          svn_wc_dirents_func_t fetch_dirents_func,
                          void *fetch_dirents_baton,
                          svn_wc_conflict_resolver_func2_t conflict_func,
                          void *conflict_baton,
                          svn_wc_external_update_t external_func,
                          void *external_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  return svn_error_trace(
    svn_wc__get_update_editor(editor, edit_baton,
                              target_revision,
                              wc_ctx,
                              anchor_abspath,
                              target_basename, ((void*)0),
                              use_commit_times,
                              depth, depth_is_sticky,
                              allow_unver_obstructions,
                              adds_as_modification,
                              server_performs_filtering,
                              clean_checkout,
                              diff3_cmd,
                              preserved_exts,
                              fetch_dirents_func, fetch_dirents_baton,
                              conflict_func, conflict_baton,
                              external_func, external_baton,
                              cancel_func, cancel_baton,
                              notify_func, notify_baton,
                              result_pool, scratch_pool));
}
