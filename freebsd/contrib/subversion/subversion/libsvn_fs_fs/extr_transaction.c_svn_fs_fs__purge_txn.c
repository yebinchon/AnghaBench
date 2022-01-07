
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int purge_shared_txn (TYPE_1__*,int *,int *) ;
 int svn_fs_fs__id_txn_parse (int *,char const*) ;
 int svn_fs_fs__path_txn_dir (TYPE_1__*,int *,int *) ;
 int svn_fs_fs__path_txn_proto_rev (TYPE_1__*,int *,int *) ;
 int svn_fs_fs__path_txn_proto_rev_lock (TYPE_1__*,int *,int *) ;
 int svn_io_remove_dir2 (int ,int ,int *,int *,int *) ;
 int svn_io_remove_file2 (int ,int ,int *) ;

svn_error_t *
svn_fs_fs__purge_txn(svn_fs_t *fs,
                     const char *txn_id_str,
                     apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_fs_fs__id_part_t txn_id;
  SVN_ERR(svn_fs_fs__id_txn_parse(&txn_id, txn_id_str));


  SVN_ERR(purge_shared_txn(fs, &txn_id, pool));

  SVN_ERR(svn_io_remove_dir2(svn_fs_fs__path_txn_dir(fs, &txn_id, pool),
                             FALSE, ((void*)0), ((void*)0), pool));
  if (ffd->format >= SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    {




      SVN_ERR(svn_io_remove_file2(
                  svn_fs_fs__path_txn_proto_rev(fs, &txn_id, pool),
                  TRUE, pool));
      SVN_ERR(svn_io_remove_file2(
                  svn_fs_fs__path_txn_proto_rev_lock(fs, &txn_id, pool),
                  TRUE, pool));
    }
  return SVN_NO_ERROR;
}
