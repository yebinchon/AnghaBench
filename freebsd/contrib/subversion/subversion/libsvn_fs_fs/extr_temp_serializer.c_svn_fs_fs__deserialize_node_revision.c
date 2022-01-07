
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int node_revision_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_fs__noderev_deserialize (int *,int **) ;

svn_error_t *
svn_fs_fs__deserialize_node_revision(void **item,
                                     void *buffer,
                                     apr_size_t buffer_size,
                                     apr_pool_t *pool)
{

  node_revision_t *noderev = (node_revision_t *)buffer;


  svn_fs_fs__noderev_deserialize(noderev, &noderev);


  *item = noderev;
  return SVN_NO_ERROR;
}
