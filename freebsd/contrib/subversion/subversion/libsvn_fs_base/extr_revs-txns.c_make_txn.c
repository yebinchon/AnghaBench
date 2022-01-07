
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {char const* id; int * fsap_data; int * vtable; int base_rev; int * fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int txn_vtable ;

__attribute__((used)) static svn_fs_txn_t *
make_txn(svn_fs_t *fs,
         const char *id,
         svn_revnum_t base_rev,
         apr_pool_t *pool)
{
  svn_fs_txn_t *txn = apr_pcalloc(pool, sizeof(*txn));

  txn->fs = fs;
  txn->id = id;
  txn->base_rev = base_rev;
  txn->vtable = &txn_vtable;
  txn->fsap_data = ((void*)0);

  return txn;
}
