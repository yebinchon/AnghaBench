
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_3__ {int rev; int fs; int txn; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int * SVN_FS__ERR_NOT_MUTABLE (int ,int ,char const*) ;
 int * svn_fs_base__dag_clone_root (int **,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
mutable_root_node(dag_node_t **node_p,
                  svn_fs_root_t *root,
                  const char *error_path,
                  trail_t *trail,
                  apr_pool_t *pool)
{
  if (root->is_txn_root)
    return svn_fs_base__dag_clone_root(node_p, root->fs, root->txn,
                                       trail, pool);
  else

    return SVN_FS__ERR_NOT_MUTABLE(root->fs, root->rev, error_path);
}
