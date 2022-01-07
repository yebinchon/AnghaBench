
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct txn_root_args {TYPE_1__* txn; int ** root_p; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__retry_txn (int ,int ,struct txn_root_args*,int ,int *) ;
 int txn_body_txn_root ;

svn_error_t *
svn_fs_base__txn_root(svn_fs_root_t **root_p,
                      svn_fs_txn_t *txn,
                      apr_pool_t *pool)
{
  svn_fs_root_t *root;
  struct txn_root_args args;

  args.root_p = &root;
  args.txn = txn;
  SVN_ERR(svn_fs_base__retry_txn(txn->fs, txn_body_txn_root, &args,
                                 FALSE, pool));

  *root_p = root;
  return SVN_NO_ERROR;
}
