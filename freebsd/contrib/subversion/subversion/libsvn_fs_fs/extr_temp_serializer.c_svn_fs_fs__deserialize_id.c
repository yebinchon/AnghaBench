
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_fs__id_deserialize (int *,int **) ;

svn_error_t *
svn_fs_fs__deserialize_id(void **out,
                          void *data,
                          apr_size_t data_len,
                          apr_pool_t *pool)
{

  svn_fs_id_t *id = (svn_fs_id_t *)data;


  svn_fs_fs__id_deserialize(id, &id);


  *out = id;
  return SVN_NO_ERROR;
}
