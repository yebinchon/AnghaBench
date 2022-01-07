
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_fs_x__change_set_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_FS_X__ITEM_INDEX_ROOT_NODE ;
 int * svn_fs_x__dag_get_node (int **,int *,TYPE_1__*,int *,int *) ;

svn_error_t *
svn_fs_x__dag_root(dag_node_t **node_p,
                   svn_fs_t *fs,
                   svn_fs_x__change_set_t change_set,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__id_t root_id;
  root_id.change_set = change_set;
  root_id.number = SVN_FS_X__ITEM_INDEX_ROOT_NODE;

  return svn_fs_x__dag_get_node(node_p, fs, &root_id, result_pool,
                                scratch_pool);
}
