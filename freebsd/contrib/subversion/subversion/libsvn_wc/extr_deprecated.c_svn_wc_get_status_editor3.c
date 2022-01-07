
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_status_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct status_editor3_compat_baton {void* old_baton; int old_func; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 struct status_editor3_compat_baton* apr_palloc (int *,int) ;
 int status_editor3_compat_func ;
 int * svn_wc_get_status_editor4 (int const**,void**,void**,int *,int *,char const*,int ,int ,int ,int const*,int ,struct status_editor3_compat_baton*,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_get_status_editor3(const svn_delta_editor_t **editor,
                          void **edit_baton,
                          void **set_locks_baton,
                          svn_revnum_t *edit_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          svn_depth_t depth,
                          svn_boolean_t get_all,
                          svn_boolean_t no_ignore,
                          const apr_array_header_t *ignore_patterns,
                          svn_wc_status_func2_t status_func,
                          void *status_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{

  struct status_editor3_compat_baton *secb = apr_palloc(pool, sizeof(*secb));

  secb->old_func = status_func;
  secb->old_baton = status_baton;

  return svn_wc_get_status_editor4(editor, edit_baton, set_locks_baton,
                                   edit_revision, anchor, target, depth,
                                   get_all, no_ignore, ignore_patterns,
                                   status_editor3_compat_func, secb,
                                   cancel_func, cancel_baton, traversal_info,
                                   pool);
}
