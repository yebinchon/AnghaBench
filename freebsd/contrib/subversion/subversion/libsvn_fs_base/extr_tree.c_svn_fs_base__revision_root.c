
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct revision_root_args {int rev; int ** root_p; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry_txn (int *,int ,struct revision_root_args*,int ,int *) ;
 int txn_body_revision_root ;

svn_error_t *
svn_fs_base__revision_root(svn_fs_root_t **root_p,
                           svn_fs_t *fs,
                           svn_revnum_t rev,
                           apr_pool_t *pool)
{
  struct revision_root_args args;
  svn_fs_root_t *root;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.root_p = &root;
  args.rev = rev;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_revision_root, &args,
                                 FALSE, pool));

  *root_p = root;
  return SVN_NO_ERROR;
}
