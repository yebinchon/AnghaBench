
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int apr_pool_t ;


 int PATH_EXT_CHILDREN ;
 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,int ,int ,int ) ;
 int svn_fs_fs__path_txn_node_rev (int *,int const*,int *) ;

const char *
svn_fs_fs__path_txn_node_children(svn_fs_t *fs,
                                  const svn_fs_id_t *id,
                                  apr_pool_t *pool)
{
  return apr_pstrcat(pool, svn_fs_fs__path_txn_node_rev(fs, id, pool),
                     PATH_EXT_CHILDREN, SVN_VA_NULL);
}
