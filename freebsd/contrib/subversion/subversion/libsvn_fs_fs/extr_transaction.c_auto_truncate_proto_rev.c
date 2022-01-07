
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_INDEX_INCONSISTENT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_off_t_toa (int *,scalar_t__) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,int ) ;
 int svn_fs_fs__id_txn_unparse (int const*,int *) ;
 int svn_fs_fs__p2l_proto_index_next_offset (scalar_t__*,int *,int *) ;
 int svn_fs_fs__p2l_proto_index_open (int **,char const*,int *) ;
 char* svn_fs_fs__path_p2l_proto_index (int *,int const*,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_trunc (int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
auto_truncate_proto_rev(svn_fs_t *fs,
                        apr_file_t *proto_rev,
                        apr_off_t actual_length,
                        const svn_fs_fs__id_part_t *txn_id,
                        apr_pool_t *pool)
{

  if (svn_fs_fs__use_log_addressing(fs))
    {



      const char *path = svn_fs_fs__path_p2l_proto_index(fs, txn_id, pool);
      apr_file_t *file;
      apr_off_t indexed_length;

      SVN_ERR(svn_fs_fs__p2l_proto_index_open(&file, path, pool));
      SVN_ERR(svn_fs_fs__p2l_proto_index_next_offset(&indexed_length, file,
                                                     pool));
      SVN_ERR(svn_io_file_close(file, pool));


      if (indexed_length < actual_length)
        SVN_ERR(svn_io_file_trunc(proto_rev, indexed_length, pool));
      else if (indexed_length > actual_length)
        return svn_error_createf(SVN_ERR_FS_INDEX_INCONSISTENT,
                                 ((void*)0),
                                 _("p2l proto index offset %s beyond proto"
                                   "rev file size %s for TXN %s"),
                                   apr_off_t_toa(pool, indexed_length),
                                   apr_off_t_toa(pool, actual_length),
                                   svn_fs_fs__id_txn_unparse(txn_id, pool));
    }

  return SVN_NO_ERROR;
}
