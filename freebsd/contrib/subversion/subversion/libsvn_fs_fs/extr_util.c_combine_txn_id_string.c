
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fs__id_part_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,int ,char const*,int ) ;
 int svn_fs_fs__id_txn_unparse (int const*,int *) ;

__attribute__((used)) static const char *
combine_txn_id_string(const svn_fs_fs__id_part_t *txn_id,
                      const char *to_add,
                      apr_pool_t *pool)
{
  return apr_pstrcat(pool, svn_fs_fs__id_txn_unparse(txn_id, pool),
                     to_add, SVN_VA_NULL);
}
