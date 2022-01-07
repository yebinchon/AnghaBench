
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_fs_x__dag_try_process_file_contents (int *,int *,int ,void*,int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
x_try_process_file_contents(svn_boolean_t *success,
                            svn_fs_root_t *root,
                            const char *path,
                            svn_fs_process_contents_func_t processor,
                            void* baton,
                            apr_pool_t *pool)
{
  dag_node_t *node;
  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, pool));

  return svn_fs_x__dag_try_process_file_contents(success, node,
                                                 processor, baton, pool);
}
