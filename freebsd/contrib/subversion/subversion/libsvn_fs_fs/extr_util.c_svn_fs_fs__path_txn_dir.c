
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int apr_pool_t ;


 int PATH_EXT_TXN ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int combine_txn_id_string (int const*,int ,int *) ;
 char const* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_fs__path_txns_dir (int *,int *) ;

const char *
svn_fs_fs__path_txn_dir(svn_fs_t *fs,
                        const svn_fs_fs__id_part_t *txn_id,
                        apr_pool_t *pool)
{
  SVN_ERR_ASSERT_NO_RETURN(txn_id != ((void*)0));
  return svn_dirent_join(svn_fs_fs__path_txns_dir(fs, pool),
                         combine_txn_id_string(txn_id, PATH_EXT_TXN, pool),
                         pool);
}
