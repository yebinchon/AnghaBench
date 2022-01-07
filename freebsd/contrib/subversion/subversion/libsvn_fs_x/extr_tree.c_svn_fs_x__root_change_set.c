
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__change_set_t ;
struct TYPE_4__ {int rev; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;


 int svn_fs_x__change_set_by_rev (int ) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int svn_fs_x__root_txn_id (TYPE_1__*) ;

svn_fs_x__change_set_t
svn_fs_x__root_change_set(svn_fs_root_t *root)
{
  if (root->is_txn_root)
    return svn_fs_x__change_set_by_txn(svn_fs_x__root_txn_id(root));

  return svn_fs_x__change_set_by_rev(root->rev);
}
