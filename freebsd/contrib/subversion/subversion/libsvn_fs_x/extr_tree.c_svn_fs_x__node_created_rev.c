
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_revision (int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;

svn_error_t *
svn_fs_x__node_created_rev(svn_revnum_t *revision,
                           svn_fs_root_t *root,
                           const char *path,
                           apr_pool_t *scratch_pool)
{
  dag_node_t *node;

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, scratch_pool));
  *revision = svn_fs_x__dag_get_revision(node);

  return SVN_NO_ERROR;
}
