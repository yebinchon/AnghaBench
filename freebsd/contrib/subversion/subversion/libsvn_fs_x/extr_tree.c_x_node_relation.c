
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_x__id_t ;
struct TYPE_5__ {scalar_t__ fs; scalar_t__ is_txn_root; scalar_t__ rev; int txn; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_fs_node_common_ancestor ;
 int svn_fs_node_unchanged ;
 int svn_fs_node_unrelated ;
 int * svn_fs_x__dag_get_id (int *) ;
 int * svn_fs_x__dag_get_node_id (int *) ;
 int svn_fs_x__get_temp_dag_node (int **,TYPE_1__*,char const*,int *) ;
 scalar_t__ svn_fs_x__id_eq (int *,int *) ;

__attribute__((used)) static svn_error_t *
x_node_relation(svn_fs_node_relation_t *relation,
                svn_fs_root_t *root_a,
                const char *path_a,
                svn_fs_root_t *root_b,
                const char *path_b,
                apr_pool_t *scratch_pool)
{
  dag_node_t *node;
  svn_fs_x__id_t noderev_id_a, noderev_id_b, node_id_a, node_id_b;


  svn_boolean_t a_is_root_dir
    = (path_a[0] == '\0') || ((path_a[0] == '/') && (path_a[1] == '\0'));
  svn_boolean_t b_is_root_dir
    = (path_b[0] == '\0') || ((path_b[0] == '/') && (path_b[1] == '\0'));


  if (root_a->fs != root_b->fs)
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }



  if (a_is_root_dir && b_is_root_dir)
    {
      svn_boolean_t different_txn
        = root_a->is_txn_root && root_b->is_txn_root
            && strcmp(root_a->txn, root_b->txn);


      *relation = ( (root_a->rev == root_b->rev)
                   && (root_a->is_txn_root == root_b->is_txn_root)
                   && !different_txn)
                ? svn_fs_node_unchanged
                : svn_fs_node_common_ancestor;
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root_a, path_a, scratch_pool));
  noderev_id_a = *svn_fs_x__dag_get_id(node);
  node_id_a = *svn_fs_x__dag_get_node_id(node);

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root_b, path_b, scratch_pool));
  noderev_id_b = *svn_fs_x__dag_get_id(node);
  node_id_b = *svn_fs_x__dag_get_node_id(node);



  if (svn_fs_x__id_eq(&noderev_id_a, &noderev_id_b))
    *relation = svn_fs_node_unchanged;
  else if (svn_fs_x__id_eq(&node_id_a, &node_id_b))
    *relation = svn_fs_node_common_ancestor;
  else
    *relation = svn_fs_node_unrelated;

  return SVN_NO_ERROR;
}
