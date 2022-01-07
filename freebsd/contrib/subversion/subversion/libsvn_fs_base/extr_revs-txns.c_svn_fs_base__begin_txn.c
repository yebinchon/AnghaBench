
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct begin_txn_args {int flags; int base_rev; int ** txn_p; } ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry_txn (int *,int ,struct begin_txn_args*,int ,int *) ;
 int txn_body_begin_txn ;

svn_error_t *
svn_fs_base__begin_txn(svn_fs_txn_t **txn_p,
                       svn_fs_t *fs,
                       svn_revnum_t rev,
                       apr_uint32_t flags,
                       apr_pool_t *pool)
{
  svn_fs_txn_t *txn;
  struct begin_txn_args args;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.txn_p = &txn;
  args.base_rev = rev;
  args.flags = flags;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_begin_txn, &args, FALSE, pool));

  *txn_p = txn;

  return SVN_NO_ERROR;
}
