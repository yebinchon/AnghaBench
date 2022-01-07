
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__p2l_entry_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__p2l_proto_index_add_entry (int *,int const*,int *) ;
 int svn_fs_fs__p2l_proto_index_open (int **,char const*,int *) ;
 char* svn_fs_fs__path_p2l_proto_index (int *,int const*,int *) ;
 int svn_fs_fs__use_log_addressing (int *) ;
 int svn_io_file_close (int *,int *) ;

__attribute__((used)) static svn_error_t *
store_p2l_index_entry(svn_fs_t *fs,
                      const svn_fs_fs__id_part_t *txn_id,
                      const svn_fs_fs__p2l_entry_t *entry,
                      apr_pool_t *pool)
{
  const char *path;
  apr_file_t *file;

  SVN_ERR_ASSERT(svn_fs_fs__use_log_addressing(fs));

  path = svn_fs_fs__path_p2l_proto_index(fs, txn_id, pool);
  SVN_ERR(svn_fs_fs__p2l_proto_index_open(&file, path, pool));
  SVN_ERR(svn_fs_fs__p2l_proto_index_add_entry(file, entry, pool));
  SVN_ERR(svn_io_file_close(file, pool));

  return SVN_NO_ERROR;
}
