
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_boolean_t ;



svn_boolean_t
svn_fs_is_txn_root(svn_fs_root_t *root)
{
  return root->is_txn_root;
}
