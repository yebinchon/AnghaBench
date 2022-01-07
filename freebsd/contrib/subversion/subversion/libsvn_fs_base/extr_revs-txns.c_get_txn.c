
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_TRANSACTION_DEAD ;
 int SVN_ERR_FS_TRANSACTION_NOT_DEAD ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,char const*) ;
 int svn_fs_bdb__get_txn (TYPE_1__**,int *,char const*,int *,int *) ;
 scalar_t__ transaction_kind_dead ;

__attribute__((used)) static svn_error_t *
get_txn(transaction_t **txn_p,
        svn_fs_t *fs,
        const char *txn_id,
        svn_boolean_t expect_dead,
        trail_t *trail,
        apr_pool_t *pool)
{
  transaction_t *txn;
  SVN_ERR(svn_fs_bdb__get_txn(&txn, fs, txn_id, trail, pool));
  if (expect_dead && (txn->kind != transaction_kind_dead))
    return svn_error_createf(SVN_ERR_FS_TRANSACTION_NOT_DEAD, 0,
                             _("Transaction is not dead: '%s'"), txn_id);
  if ((! expect_dead) && (txn->kind == transaction_kind_dead))
    return svn_error_createf(SVN_ERR_FS_TRANSACTION_DEAD, 0,
                             _("Transaction is dead: '%s'"), txn_id);
  *txn_p = txn;
  return SVN_NO_ERROR;
}
