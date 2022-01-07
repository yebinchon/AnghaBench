
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int base_rev; } ;
typedef TYPE_1__ svn_fs_txn_t ;



svn_revnum_t
svn_fs_txn_base_revision(svn_fs_txn_t *txn)
{
  return txn->base_rev;
}
