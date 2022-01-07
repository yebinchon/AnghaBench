
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__id_t ;
struct TYPE_4__ {int fs; int rev; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_x__dag_get_id (int *) ;
 int svn_fs_x__get_temp_dag_node (int **,TYPE_1__*,char const*,int *) ;
 int * svn_fs_x__id_create (int ,int *,int *) ;
 int svn_fs_x__id_create_context (int ,int *) ;
 int svn_fs_x__init_rev_root (int *,int ) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_node_id(const svn_fs_id_t **id_p,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{
  svn_fs_x__id_t noderev_id;

  if ((! root->is_txn_root)
      && (path[0] == '\0' || ((path[0] == '/') && (path[1] == '\0'))))
    {




      svn_fs_x__init_rev_root(&noderev_id, root->rev);
    }
  else
    {
      apr_pool_t *scratch_pool = svn_pool_create(pool);
      dag_node_t *node;

      SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, scratch_pool));
      noderev_id = *svn_fs_x__dag_get_id(node);
      svn_pool_destroy(scratch_pool);
    }

  *id_p = svn_fs_x__id_create(svn_fs_x__id_create_context(root->fs, pool),
                              &noderev_id, pool);

  return SVN_NO_ERROR;
}
