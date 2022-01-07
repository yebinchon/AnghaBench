
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int PATH_EXT_REV ;
 int PATH_REV ;
 scalar_t__ SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ;
 int combine_txn_id_string (int const*,int ,int *) ;
 char const* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_fs__path_txn_dir (TYPE_1__*,int const*,int *) ;
 int svn_fs_fs__path_txn_proto_revs (TYPE_1__*,int *) ;

const char *
svn_fs_fs__path_txn_proto_rev(svn_fs_t *fs,
                              const svn_fs_fs__id_part_t *txn_id,
                              apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  if (ffd->format >= SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    return svn_dirent_join(svn_fs_fs__path_txn_proto_revs(fs, pool),
                           combine_txn_id_string(txn_id, PATH_EXT_REV, pool),
                           pool);
  else
    return svn_dirent_join(svn_fs_fs__path_txn_dir(fs, txn_id, pool),
                           PATH_REV, pool);
}
