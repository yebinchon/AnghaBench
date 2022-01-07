
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_fs__check_fs (int ,int ) ;
 int svn_fs_base__purge_txn (int ,int ,int *) ;
 int svn_fs_base__retry_txn (int ,int ,TYPE_1__*,int ,int *) ;
 int txn_body_abort_txn ;

svn_error_t *
svn_fs_base__abort_txn(svn_fs_txn_t *txn,
                       apr_pool_t *pool)
{
  SVN_ERR(svn_fs__check_fs(txn->fs, TRUE));


  SVN_ERR(svn_fs_base__retry_txn(txn->fs, txn_body_abort_txn, txn,
                                 TRUE, pool));


  SVN_ERR_W(svn_fs_base__purge_txn(txn->fs, txn->id, pool),
            _("Transaction aborted, but cleanup failed"));

  return SVN_NO_ERROR;
}
