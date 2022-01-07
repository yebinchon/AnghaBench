
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_proplist (int **,int *,int *,int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_node_proplist(apr_hash_t **table_p,
                svn_fs_root_t *root,
                const char *path,
                apr_pool_t *pool)
{
  dag_node_t *node;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, scratch_pool));
  SVN_ERR(svn_fs_x__dag_get_proplist(table_p, node, pool, scratch_pool));

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
