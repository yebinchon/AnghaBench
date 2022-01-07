
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__path_txn_dir (int *,int ,int *) ;
 int svn_fs_x__path_txn_props (int *,int ,int *) ;
 int svn_fs_x__write_properties (int *,int *,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,int ,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
set_txn_proplist(svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 apr_hash_t *props,
                 apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  const char *temp_path;


  SVN_ERR(svn_stream_open_unique(&stream, &temp_path,
                                 svn_fs_x__path_txn_dir(fs, txn_id,
                                                        scratch_pool),
                                 svn_io_file_del_none,
                                 scratch_pool, scratch_pool));
  SVN_ERR(svn_fs_x__write_properties(stream, props, scratch_pool));
  SVN_ERR(svn_stream_close(stream));


  SVN_ERR(svn_io_file_rename2(temp_path,
                              svn_fs_x__path_txn_props(fs, txn_id,
                                                       scratch_pool),
                              FALSE,
                              scratch_pool));

  return SVN_NO_ERROR;
}
