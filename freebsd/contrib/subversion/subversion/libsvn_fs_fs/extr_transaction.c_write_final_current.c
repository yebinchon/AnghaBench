
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 int read_next_ids (scalar_t__*,scalar_t__*,TYPE_1__*,int const*,int *) ;
 int * svn_fs_fs__write_current (TYPE_1__*,int ,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
write_final_current(svn_fs_t *fs,
                    const svn_fs_fs__id_part_t *txn_id,
                    svn_revnum_t rev,
                    apr_uint64_t start_node_id,
                    apr_uint64_t start_copy_id,
                    apr_pool_t *pool)
{
  apr_uint64_t txn_node_id;
  apr_uint64_t txn_copy_id;
  fs_fs_data_t *ffd = fs->fsap_data;

  if (ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    return svn_fs_fs__write_current(fs, rev, 0, 0, pool);



  SVN_ERR(read_next_ids(&txn_node_id, &txn_copy_id, fs, txn_id, pool));

  start_node_id += txn_node_id;
  start_copy_id += txn_copy_id;

  return svn_fs_fs__write_current(fs, rev, start_node_id, start_copy_id,
                                  pool);
}
