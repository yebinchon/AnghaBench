
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int get_dag (int **,int *,char const*,int *) ;
 int * svn_fs_fs__dag_get_file_delta_stream (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
fs_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                         svn_fs_root_t *source_root,
                         const char *source_path,
                         svn_fs_root_t *target_root,
                         const char *target_path,
                         apr_pool_t *pool)
{
  dag_node_t *source_node, *target_node;

  if (source_root && source_path)
    SVN_ERR(get_dag(&source_node, source_root, source_path, pool));
  else
    source_node = ((void*)0);
  SVN_ERR(get_dag(&target_node, target_root, target_path, pool));


  return svn_fs_fs__dag_get_file_delta_stream(stream_p, source_node,
                                              target_node, pool);
}
