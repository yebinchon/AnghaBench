
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svnlook_ctxt_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_root (int **,int *,int *) ;
 int print_tree (int *,char const*,int const*,int ,int ,int ,int ,int ,int *) ;
 int svn_fs_is_dir (int *,int *,char const*,int *) ;
 int svn_fs_node_id (int const**,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
do_tree(svnlook_ctxt_t *c,
        const char *path,
        svn_boolean_t show_ids,
        svn_boolean_t full_paths,
        svn_boolean_t recurse,
        apr_pool_t *pool)
{
  svn_fs_root_t *root;
  const svn_fs_id_t *id;
  svn_boolean_t is_dir;

  SVN_ERR(get_root(&root, c, pool));
  SVN_ERR(svn_fs_node_id(&id, root, path, pool));
  SVN_ERR(svn_fs_is_dir(&is_dir, root, path, pool));
  SVN_ERR(print_tree(root, path, id, is_dir, 0, show_ids, full_paths,
                     recurse, pool));
  return SVN_NO_ERROR;
}
