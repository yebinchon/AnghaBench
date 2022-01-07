
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__noderev_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int noderev_deserialize (int *,int **) ;

svn_error_t *
svn_fs_x__deserialize_node_revision(void **item,
                                    void *buffer,
                                    apr_size_t buffer_size,
                                    apr_pool_t *result_pool)
{

  svn_fs_x__noderev_t *noderev = (svn_fs_x__noderev_t *)buffer;


  noderev_deserialize(noderev, &noderev);


  *item = noderev;
  return SVN_NO_ERROR;
}
