
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int * svn_fs_x__get_dag_node (int **,int *,char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_root(dag_node_t **node,
         svn_fs_root_t *root,
         apr_pool_t *result_pool,
         apr_pool_t *scratch_pool)
{
  return svn_fs_x__get_dag_node(node, root, "/", result_pool, scratch_pool);
}
