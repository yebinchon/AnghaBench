
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_fs_x__path_txn_proto_rev (int *,int ,int *) ;
 int svn_fs_x__rev_file_wrap_temp (int **,int *,int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;

svn_error_t *
svn_fs_x__rev_file_open_proto_rev(svn_fs_x__revision_file_t **file,
                                  svn_fs_t *fs,
                                  svn_fs_x__txn_id_t txn_id,
                                  apr_pool_t* result_pool,
                                  apr_pool_t *scratch_pool)
{
  apr_file_t *apr_file;
  SVN_ERR(svn_io_file_open(&apr_file,
                           svn_fs_x__path_txn_proto_rev(fs, txn_id,
                                                        scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           result_pool));

  return svn_error_trace(svn_fs_x__rev_file_wrap_temp(file, fs, apr_file,
                                                      result_pool));
}
