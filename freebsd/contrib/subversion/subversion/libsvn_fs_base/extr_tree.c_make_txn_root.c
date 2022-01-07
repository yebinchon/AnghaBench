
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {int rev; int txn_flags; int pool; int txn; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 TYPE_1__* make_root (int *,int *) ;

__attribute__((used)) static svn_fs_root_t *
make_txn_root(svn_fs_t *fs,
              const char *txn,
              svn_revnum_t base_rev,
              apr_uint32_t flags,
              apr_pool_t *pool)
{
  svn_fs_root_t *root = make_root(fs, pool);
  root->is_txn_root = TRUE;
  root->txn = apr_pstrdup(root->pool, txn);
  root->txn_flags = flags;
  root->rev = base_rev;

  return root;
}
