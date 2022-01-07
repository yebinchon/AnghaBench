
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fs__dir_data_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * return_serialized_dir_context (int ,void**,int *,int ) ;
 int serialize_dir (int *,int *) ;

svn_error_t *
svn_fs_fs__serialize_txndir_entries(void **data,
                                    apr_size_t *data_len,
                                    void *in,
                                    apr_pool_t *pool)
{
  svn_fs_fs__dir_data_t *dir = in;



  return return_serialized_dir_context(serialize_dir(dir, pool),
                                       data,
                                       data_len,
                                       TRUE);
}
