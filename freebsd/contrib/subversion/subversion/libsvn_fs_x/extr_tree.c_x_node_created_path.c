
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;
 int svn_fs_x__dag_get_created_path (int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
x_node_created_path(const char **created_path,
                    svn_fs_root_t *root,
                    const char *path,
                    apr_pool_t *pool)
{
  dag_node_t *node;

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, pool));
  *created_path = apr_pstrdup(pool, svn_fs_x__dag_get_created_path(node));

  return SVN_NO_ERROR;
}
