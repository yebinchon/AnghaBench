
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__change_set_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ SVN_FS_X__INVALID_CHANGE_SET ;
 scalar_t__ SVN_FS_X__INVALID_TXN_ID ;
 scalar_t__ svn_fs_x__is_txn (int ) ;

apr_int64_t
svn_fs_x__get_txn_id(svn_fs_x__change_set_t change_set)
{
  return svn_fs_x__is_txn(change_set)
       ? -change_set + SVN_FS_X__INVALID_CHANGE_SET -1
       : SVN_FS_X__INVALID_TXN_ID;
}
