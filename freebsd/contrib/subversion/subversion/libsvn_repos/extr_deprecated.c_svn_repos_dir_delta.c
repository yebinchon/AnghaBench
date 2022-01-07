
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_authz_func_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_repos_dir_delta2 (int *,char const*,char const*,int *,char const*,int const*,void*,int ,void*,int ,int ,int ,int ,int *) ;

svn_error_t *
svn_repos_dir_delta(svn_fs_root_t *src_root,
                    const char *src_parent_dir,
                    const char *src_entry,
                    svn_fs_root_t *tgt_root,
                    const char *tgt_fullpath,
                    const svn_delta_editor_t *editor,
                    void *edit_baton,
                    svn_repos_authz_func_t authz_read_func,
                    void *authz_read_baton,
                    svn_boolean_t text_deltas,
                    svn_boolean_t recurse,
                    svn_boolean_t entry_props,
                    svn_boolean_t ignore_ancestry,
                    apr_pool_t *pool)
{
  return svn_repos_dir_delta2(src_root,
                              src_parent_dir,
                              src_entry,
                              tgt_root,
                              tgt_fullpath,
                              editor,
                              edit_baton,
                              authz_read_func,
                              authz_read_baton,
                              text_deltas,
                              SVN_DEPTH_INFINITY_OR_FILES(recurse),
                              entry_props,
                              ignore_ancestry,
                              pool);
}
