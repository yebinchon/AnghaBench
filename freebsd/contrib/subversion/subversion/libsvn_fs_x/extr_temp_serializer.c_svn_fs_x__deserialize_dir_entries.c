
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int dir_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 void* deserialize_dir (int *,int *,int *) ;

svn_error_t *
svn_fs_x__deserialize_dir_entries(void **out,
                                  void *data,
                                  apr_size_t data_len,
                                  apr_pool_t *result_pool)
{

  dir_data_t *dir_data = (dir_data_t *)data;


  *out = deserialize_dir(dir_data, dir_data, result_pool);

  return SVN_NO_ERROR;
}
