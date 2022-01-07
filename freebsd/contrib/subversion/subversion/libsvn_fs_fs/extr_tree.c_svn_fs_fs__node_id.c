
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fsap_data; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,TYPE_1__*,char const*,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int * svn_fs_fs__id_copy (int ,int *) ;

svn_error_t *
svn_fs_fs__node_id(const svn_fs_id_t **id_p,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  if ((! root->is_txn_root)
      && (path[0] == '\0' || ((path[0] == '/') && (path[1] == '\0'))))
    {




      dag_node_t *root_dir = root->fsap_data;
      *id_p = svn_fs_fs__id_copy(svn_fs_fs__dag_get_id(root_dir), pool);
    }
  else
    {
      dag_node_t *node;

      SVN_ERR(get_dag(&node, root, path, pool));
      *id_p = svn_fs_fs__id_copy(svn_fs_fs__dag_get_id(node), pool);
    }
  return SVN_NO_ERROR;
}
