
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int base_rev; int fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_FS_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int * make_txn_root (int **,int ,int ,int ,int ,int *) ;
 int svn_fs_fs__txn_get_id (TYPE_1__*) ;
 int svn_fs_fs__txn_proplist (int **,TYPE_1__*,int *) ;
 scalar_t__ svn_hash_gets (int *,int ) ;

svn_error_t *
svn_fs_fs__txn_root(svn_fs_root_t **root_p,
                    svn_fs_txn_t *txn,
                    apr_pool_t *pool)
{
  apr_uint32_t flags = 0;
  apr_hash_t *txnprops;


  SVN_ERR(svn_fs_fs__txn_proplist(&txnprops, txn, pool));
  if (txnprops)
    {
      if (svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CHECK_OOD))
        flags |= SVN_FS_TXN_CHECK_OOD;

      if (svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CHECK_LOCKS))
        flags |= SVN_FS_TXN_CHECK_LOCKS;
    }

  return make_txn_root(root_p, txn->fs, svn_fs_fs__txn_get_id(txn),
                       txn->base_rev, flags, pool);
}
