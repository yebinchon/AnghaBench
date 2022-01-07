
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_4__ {int txn; int fs; int is_txn_root; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
struct TYPE_5__ {int root_dir; } ;
typedef TYPE_2__ base_root_data_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * svn_fs_base__dag_dup (int ,int *) ;
 int * svn_fs_base__dag_txn_root (int **,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
root_node(dag_node_t **node_p,
          svn_fs_root_t *root,
          trail_t *trail,
          apr_pool_t *pool)
{
  base_root_data_t *brd = root->fsap_data;

  if (! root->is_txn_root)
    {


      *node_p = svn_fs_base__dag_dup(brd->root_dir, pool);
      return SVN_NO_ERROR;
    }
  else
    {

      return svn_fs_base__dag_txn_root(node_p, root->fs, root->txn,
                                       trail, pool);
    }
}
