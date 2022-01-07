
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct lock_token_get_args {int ** lock_p; int path; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_base__retry_txn (int *,int ,struct lock_token_get_args*,int ,int *) ;
 int txn_body_get_lock ;

svn_error_t *
svn_fs_base__get_lock(svn_lock_t **lock,
                      svn_fs_t *fs,
                      const char *path,
                      apr_pool_t *pool)
{
  struct lock_token_get_args args;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.path = svn_fs__canonicalize_abspath(path, pool);
  args.lock_p = lock;
  return svn_fs_base__retry_txn(fs, txn_body_get_lock, &args, FALSE, pool);
}
