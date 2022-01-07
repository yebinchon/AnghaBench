
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 char* path_txn_props (int *,int const*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_hash_write2 (int *,int *,int ,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
set_txn_proplist(svn_fs_t *fs,
                 const svn_fs_fs__id_part_t *txn_id,
                 apr_hash_t *props,
                 apr_pool_t *pool)
{
  svn_stream_t *tmp_stream;
  const char *tmp_path;
  const char *final_path = path_txn_props(fs, txn_id, pool);


  SVN_ERR(svn_stream_open_unique(&tmp_stream, &tmp_path,
                                 svn_dirent_dirname(final_path, pool),
                                 svn_io_file_del_none,
                                 pool, pool));


  SVN_ERR(svn_hash_write2(props, tmp_stream, SVN_HASH_TERMINATOR, pool));
  SVN_ERR(svn_stream_close(tmp_stream));

  SVN_ERR(svn_io_file_rename2(tmp_path, final_path, FALSE, pool));

  return SVN_NO_ERROR;
}
