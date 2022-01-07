
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rev; int fs; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_FS__ERR_NOT_MUTABLE (int ,int ,char const*) ;
 int * SVN_NO_ERROR ;
 int get_root_node (int **,TYPE_1__*,int ,int *) ;
 int * svn_fs_x__dag_dup (int *,int *) ;
 int svn_fs_x__root_change_set (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
mutable_root_node(dag_node_t **node_p,
                  svn_fs_root_t *root,
                  const char *error_path,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{

  if (!root->is_txn_root)
    return SVN_FS__ERR_NOT_MUTABLE(root->fs, root->rev, error_path);



  SVN_ERR(get_root_node(node_p, root, svn_fs_x__root_change_set(root),
                        scratch_pool));
  *node_p = svn_fs_x__dag_dup(*node_p, result_pool);

  return SVN_NO_ERROR;
}
