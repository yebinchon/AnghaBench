
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int txn_filesize; } ;
typedef TYPE_1__ dir_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_fs__reset_txn_filesize(void **data,
                              apr_size_t *data_len,
                              void *baton,
                              apr_pool_t *pool)
{
  dir_data_t *dir_data = (dir_data_t *)*data;
  dir_data->txn_filesize = SVN_INVALID_FILESIZE;

  return SVN_NO_ERROR;
}
