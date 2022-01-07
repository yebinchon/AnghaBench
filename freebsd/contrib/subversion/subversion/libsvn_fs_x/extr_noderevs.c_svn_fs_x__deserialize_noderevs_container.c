
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int noderevs; int reps; int ids; int paths; } ;
typedef TYPE_1__ svn_fs_x__noderevs_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_x__deserialize_apr_array (TYPE_1__*,int *,int *) ;
 int svn_fs_x__deserialize_string_table (TYPE_1__*,int *) ;

svn_error_t *
svn_fs_x__deserialize_noderevs_container(void **out,
                                         void *data,
                                         apr_size_t data_len,
                                         apr_pool_t *result_pool)
{
  svn_fs_x__noderevs_t *noderevs = (svn_fs_x__noderevs_t *)data;


  svn_fs_x__deserialize_string_table(noderevs, &noderevs->paths);
  svn_fs_x__deserialize_apr_array(noderevs, &noderevs->ids, result_pool);
  svn_fs_x__deserialize_apr_array(noderevs, &noderevs->reps, result_pool);
  svn_fs_x__deserialize_apr_array(noderevs, &noderevs->noderevs, result_pool);


  *out = noderevs;

  return SVN_NO_ERROR;
}
