
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int txn_filesize; } ;
typedef TYPE_1__ dir_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_fs__extract_dir_filesize(void **out,
                                const void *data,
                                apr_size_t data_len,
                                void *baton,
                                apr_pool_t *pool)
{
  const dir_data_t *dir_data = data;

  *(svn_filesize_t *)out = dir_data->txn_filesize;

  return SVN_NO_ERROR;
}
