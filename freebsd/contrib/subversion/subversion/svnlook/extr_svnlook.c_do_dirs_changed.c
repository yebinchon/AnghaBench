
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int repos; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_node_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int generate_delta_tree (int **,int ,int *,scalar_t__,int *) ;
 int get_base_rev (scalar_t__*,TYPE_1__*,int *) ;
 int get_root (int **,TYPE_1__*,int *) ;
 int print_dirs_changed_tree (int *,char*,int *) ;

__attribute__((used)) static svn_error_t *
do_dirs_changed(svnlook_ctxt_t *c, apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_revnum_t base_rev_id;
  svn_repos_node_t *tree;

  SVN_ERR(get_root(&root, c, pool));
  SVN_ERR(get_base_rev(&base_rev_id, c, pool));
  if (base_rev_id == SVN_INVALID_REVNUM)
    return SVN_NO_ERROR;

  SVN_ERR(generate_delta_tree(&tree, c->repos, root, base_rev_id, pool));
  if (tree)
    SVN_ERR(print_dirs_changed_tree(tree, "", pool));

  return SVN_NO_ERROR;
}
