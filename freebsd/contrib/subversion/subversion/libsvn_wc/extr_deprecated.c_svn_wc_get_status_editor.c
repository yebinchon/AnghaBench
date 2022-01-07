
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_status_func_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct old_status_func_cb_baton {void* original_baton; int original_func; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int SVN_ERR (int ) ;
 struct old_status_func_cb_baton* apr_pcalloc (int *,int) ;
 int old_status_func_cb ;
 int svn_wc_get_default_ignores (int **,int *,int *) ;
 int * svn_wc_get_status_editor3 (int const**,void**,int *,int *,int *,char const*,int ,int ,int ,int *,int ,struct old_status_func_cb_baton*,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_get_status_editor(const svn_delta_editor_t **editor,
                         void **edit_baton,
                         svn_revnum_t *edit_revision,
                         svn_wc_adm_access_t *anchor,
                         const char *target,
                         apr_hash_t *config,
                         svn_boolean_t recurse,
                         svn_boolean_t get_all,
                         svn_boolean_t no_ignore,
                         svn_wc_status_func_t status_func,
                         void *status_baton,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         svn_wc_traversal_info_t *traversal_info,
                         apr_pool_t *pool)
{
  struct old_status_func_cb_baton *b = apr_pcalloc(pool, sizeof(*b));
  apr_array_header_t *ignores;
  b->original_func = status_func;
  b->original_baton = status_baton;
  SVN_ERR(svn_wc_get_default_ignores(&ignores, config, pool));
  return svn_wc_get_status_editor3(editor, edit_baton, ((void*)0), edit_revision,
                                   anchor, target,
                                   SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse),
                                   get_all, no_ignore, ignores,
                                   old_status_func_cb, b,
                                   cancel_func, cancel_baton,
                                   traversal_info, pool);
}
