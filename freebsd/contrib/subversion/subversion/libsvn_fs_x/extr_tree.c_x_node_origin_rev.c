
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* svn_fs_x__dag_get_node_id (int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
x_node_origin_rev(svn_revnum_t *revision,
                  svn_fs_root_t *root,
                  const char *path,
                  apr_pool_t *scratch_pool)
{
  svn_fs_x__id_t node_id;
  dag_node_t *node;

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, scratch_pool));
  node_id = *svn_fs_x__dag_get_node_id(node);

  *revision = svn_fs_x__get_revnum(node_id.change_set);

  return SVN_NO_ERROR;
}
