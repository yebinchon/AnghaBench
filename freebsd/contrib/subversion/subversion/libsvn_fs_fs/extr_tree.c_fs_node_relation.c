
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ is_txn_root; scalar_t__ fs; scalar_t__ rev; int txn; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_node_relation_t ;
typedef int svn_fs_id_t ;
struct TYPE_10__ {scalar_t__ revision; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,TYPE_1__*,char const*,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int * svn_fs_fs__dag_get_id (int *) ;
 scalar_t__ svn_fs_fs__id_eq (int const*,int const*) ;
 TYPE_2__* svn_fs_fs__id_node_id (int const*) ;
 int svn_fs_fs__id_part_eq (TYPE_2__*,TYPE_2__*) ;
 int svn_fs_node_common_ancestor ;
 int svn_fs_node_unchanged ;
 int svn_fs_node_unrelated ;

__attribute__((used)) static svn_error_t *
fs_node_relation(svn_fs_node_relation_t *relation,
                 svn_fs_root_t *root_a, const char *path_a,
                 svn_fs_root_t *root_b, const char *path_b,
                 apr_pool_t *pool)
{
  dag_node_t *node;
  const svn_fs_id_t *id_a, *id_b;
  svn_fs_fs__id_part_t node_id_a, node_id_b;


  svn_boolean_t a_is_root_dir
    = (path_a[0] == '\0') || ((path_a[0] == '/') && (path_a[1] == '\0'));
  svn_boolean_t b_is_root_dir
    = (path_b[0] == '\0') || ((path_b[0] == '/') && (path_b[1] == '\0'));


  svn_boolean_t different_txn
    = root_a->is_txn_root && root_b->is_txn_root
        && strcmp(root_a->txn, root_b->txn);


  if (root_a->fs != root_b->fs)
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }



  if (a_is_root_dir && b_is_root_dir)
    {

      *relation = ( (root_a->rev == root_b->rev)
                   && (root_a->is_txn_root == root_b->is_txn_root)
                   && !different_txn)
                ? svn_fs_node_unchanged
                : svn_fs_node_common_ancestor;
      return SVN_NO_ERROR;
    }



  SVN_ERR(get_dag(&node, root_a, path_a, pool));
  id_a = svn_fs_fs__dag_get_id(node);
  node_id_a = *svn_fs_fs__id_node_id(id_a);

  SVN_ERR(get_dag(&node, root_b, path_b, pool));
  id_b = svn_fs_fs__dag_get_id(node);
  node_id_b = *svn_fs_fs__id_node_id(id_b);


  if (!svn_fs_fs__id_part_eq(&node_id_a, &node_id_b))
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }





  if (different_txn && node_id_a.revision == SVN_INVALID_REVNUM)
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }


  if (svn_fs_fs__id_eq(id_a, id_b))
    *relation = svn_fs_node_unchanged;
  else
    *relation = svn_fs_node_common_ancestor;

  return SVN_NO_ERROR;
}
