
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_fs_x__change_set_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ SVN_FS_X__INVALID_CHANGE_SET ;
 int assert (int) ;

svn_fs_x__change_set_t
svn_fs_x__change_set_by_txn(apr_int64_t txn_id)
{
  assert(txn_id >= SVN_FS_X__INVALID_CHANGE_SET);
  return -txn_id + SVN_FS_X__INVALID_CHANGE_SET -1;
}
