
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
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_file_delta_stream (int **,int *,int *,int *,int *) ;
 int svn_fs_x__get_dag_node (int **,int *,char const*,int *,int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                        svn_fs_root_t *source_root,
                        const char *source_path,
                        svn_fs_root_t *target_root,
                        const char *target_path,
                        apr_pool_t *pool)
{
  dag_node_t *source_node, *target_node;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  if (source_root && source_path)
    SVN_ERR(svn_fs_x__get_dag_node(&source_node, source_root, source_path,
                                   scratch_pool, scratch_pool));
  else
    source_node = ((void*)0);
  SVN_ERR(svn_fs_x__get_temp_dag_node(&target_node, target_root, target_path,
                                      scratch_pool));


  SVN_ERR(svn_fs_x__dag_get_file_delta_stream(stream_p, source_node,
                                              target_node, pool,
                                              scratch_pool));

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
