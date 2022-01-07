
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txn; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int apr_pool_t ;


 char const* apr_pstrdup (int *,int ) ;

const char *
svn_fs_txn_root_name(svn_fs_root_t *root, apr_pool_t *pool)
{
  return root->is_txn_root ? apr_pstrdup(pool, root->txn) : ((void*)0);
}
