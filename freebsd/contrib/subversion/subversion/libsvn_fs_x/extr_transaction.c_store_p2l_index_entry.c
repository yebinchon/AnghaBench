
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__p2l_proto_index_add_entry (int *,int const*,int *) ;
 int svn_fs_x__p2l_proto_index_open (int **,char const*,int *) ;
 char* svn_fs_x__path_p2l_proto_index (int *,int ,int *) ;
 int svn_io_file_close (int *,int *) ;

__attribute__((used)) static svn_error_t *
store_p2l_index_entry(svn_fs_t *fs,
                      svn_fs_x__txn_id_t txn_id,
                      const svn_fs_x__p2l_entry_t *entry,
                      apr_pool_t *scratch_pool)
{
  const char *path = svn_fs_x__path_p2l_proto_index(fs, txn_id, scratch_pool);
  apr_file_t *file;
  SVN_ERR(svn_fs_x__p2l_proto_index_open(&file, path, scratch_pool));
  SVN_ERR(svn_fs_x__p2l_proto_index_add_entry(file, entry, scratch_pool));
  SVN_ERR(svn_io_file_close(file, scratch_pool));

  return SVN_NO_ERROR;
}
