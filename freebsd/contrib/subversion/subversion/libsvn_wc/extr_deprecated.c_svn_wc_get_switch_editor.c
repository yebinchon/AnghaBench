
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct compat_notify_baton_t {void* baton; int func; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 struct compat_notify_baton_t* apr_palloc (int *,int) ;
 int compat_call_notify_func ;
 int * svn_wc_get_switch_editor3 (int *,int *,char const*,char const*,int ,int ,int ,int ,int ,struct compat_notify_baton_t*,int ,void*,int *,int *,char const*,int *,int const**,void**,int *,int *) ;

svn_error_t *
svn_wc_get_switch_editor(svn_revnum_t *target_revision,
                         svn_wc_adm_access_t *anchor,
                         const char *target,
                         const char *switch_url,
                         svn_boolean_t use_commit_times,
                         svn_boolean_t recurse,
                         svn_wc_notify_func_t notify_func,
                         void *notify_baton,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         const char *diff3_cmd,
                         const svn_delta_editor_t **editor,
                         void **edit_baton,
                         svn_wc_traversal_info_t *traversal_info,
                         apr_pool_t *pool)
{

  struct compat_notify_baton_t *nb = apr_palloc(pool, sizeof(*nb));

  nb->func = notify_func;
  nb->baton = notify_baton;

  return svn_wc_get_switch_editor3(target_revision, anchor, target,
                                   switch_url, use_commit_times,
                                   SVN_DEPTH_INFINITY_OR_FILES(recurse), FALSE,
                                   FALSE, compat_call_notify_func, nb,
                                   cancel_func, cancel_baton,
                                   ((void*)0), ((void*)0), diff3_cmd,
                                   ((void*)0), editor, edit_baton, traversal_info,
                                   pool);
}
