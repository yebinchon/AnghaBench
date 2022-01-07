
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_status_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int SVN_ERR (int ) ;
 int svn_wc_get_default_ignores (int **,int *,int *) ;
 int * svn_wc_get_status_editor3 (int const**,void**,void**,int *,int *,char const*,int ,int ,int ,int *,int ,void*,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_get_status_editor2(const svn_delta_editor_t **editor,
                          void **edit_baton,
                          void **set_locks_baton,
                          svn_revnum_t *edit_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          apr_hash_t *config,
                          svn_boolean_t recurse,
                          svn_boolean_t get_all,
                          svn_boolean_t no_ignore,
                          svn_wc_status_func2_t status_func,
                          void *status_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  apr_array_header_t *ignores;

  SVN_ERR(svn_wc_get_default_ignores(&ignores, config, pool));
  return svn_wc_get_status_editor3(editor,
                                   edit_baton,
                                   set_locks_baton,
                                   edit_revision,
                                   anchor,
                                   target,
                                   SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse),
                                   get_all,
                                   no_ignore,
                                   ignores,
                                   status_func,
                                   status_baton,
                                   cancel_func,
                                   cancel_baton,
                                   traversal_info,
                                   pool);
}
