
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * dag_node_cache_get (int *,int ) ;
 int normalize_path (int *,char const*) ;
 int walk_dag_path (int **,int *,int *,int *) ;

svn_error_t *
svn_fs_x__get_temp_dag_node(dag_node_t **node_p,
                            svn_fs_root_t *root,
                            const char *path,
                            apr_pool_t *scratch_pool)
{
  svn_string_t normalized;


  *node_p = dag_node_cache_get(root, normalize_path(&normalized, path));


  if (! *node_p)
    SVN_ERR(walk_dag_path(node_p, root, &normalized, scratch_pool));

  return SVN_NO_ERROR;
}
