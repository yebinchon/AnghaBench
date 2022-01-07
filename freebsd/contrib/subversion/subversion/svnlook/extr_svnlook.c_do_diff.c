
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fs; int repos; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_stream_t ;
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
 int print_diff_tree (int *,char const*,int *,int *,int *,char*,char*,TYPE_1__*,int *) ;
 int stdout ;
 int svn_cmdline_fflush (int ) ;
 char* svn_cmdline_output_encoding (int *) ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 int svn_stream_for_stdout (int **,int *) ;

__attribute__((used)) static svn_error_t *
do_diff(svnlook_ctxt_t *c, apr_pool_t *pool)
{
  svn_fs_root_t *root, *base_root;
  svn_revnum_t base_rev_id;
  svn_repos_node_t *tree;

  SVN_ERR(get_root(&root, c, pool));
  SVN_ERR(get_base_rev(&base_rev_id, c, pool));
  if (base_rev_id == SVN_INVALID_REVNUM)
    return SVN_NO_ERROR;

  SVN_ERR(generate_delta_tree(&tree, c->repos, root, base_rev_id, pool));
  if (tree)
    {
      svn_stream_t *out_stream;
      const char *encoding = svn_cmdline_output_encoding(pool);

      SVN_ERR(svn_fs_revision_root(&base_root, c->fs, base_rev_id, pool));
      SVN_ERR(svn_cmdline_fflush(stdout));
      SVN_ERR(svn_stream_for_stdout(&out_stream, pool));

      SVN_ERR(print_diff_tree(out_stream, encoding, root, base_root, tree,
                              "", "", c, pool));
    }
  return SVN_NO_ERROR;
}
