
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int rev; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;


 int SVN_INVALID_REVNUM ;

svn_revnum_t
svn_fs_txn_root_base_revision(svn_fs_root_t *root)
{
  return root->is_txn_root ? root->rev : SVN_INVALID_REVNUM;
}
