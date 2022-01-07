
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int apr_pool_t ;


 int PATH_TXN_ITEM_INDEX ;
 char const* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_fs__path_txn_dir (int *,int const*,int *) ;

const char *
svn_fs_fs__path_txn_item_index(svn_fs_t *fs,
                               const svn_fs_fs__id_part_t *txn_id,
                               apr_pool_t *pool)
{
  return svn_dirent_join(svn_fs_fs__path_txn_dir(fs, txn_id, pool),
                         PATH_TXN_ITEM_INDEX, pool);
}
