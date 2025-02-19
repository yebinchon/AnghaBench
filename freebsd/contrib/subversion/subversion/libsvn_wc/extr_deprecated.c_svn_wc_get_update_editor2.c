
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_wc_get_update_editor3 (int *,int *,char const*,int ,int ,int ,int ,int ,void*,int ,void*,int *,int *,int *,int *,char const*,int *,int const**,void**,int *,int *) ;

svn_error_t *
svn_wc_get_update_editor2(svn_revnum_t *target_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          svn_boolean_t use_commit_times,
                          svn_boolean_t recurse,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          const char *diff3_cmd,
                          const svn_delta_editor_t **editor,
                          void **edit_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  return svn_wc_get_update_editor3(target_revision, anchor, target,
                                   use_commit_times,
                                   SVN_DEPTH_INFINITY_OR_FILES(recurse), FALSE,
                                   FALSE, notify_func, notify_baton,
                                   cancel_func, cancel_baton, ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0),
                                   diff3_cmd, ((void*)0), editor, edit_baton,
                                   traversal_info, pool);
}
