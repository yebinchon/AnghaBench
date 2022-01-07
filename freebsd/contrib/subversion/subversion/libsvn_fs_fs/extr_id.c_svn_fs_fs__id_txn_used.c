
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_boolean_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;

svn_boolean_t
svn_fs_fs__id_txn_used(const svn_fs_fs__id_part_t *txn_id)
{
  return SVN_IS_VALID_REVNUM(txn_id->revision) || (txn_id->number != 0);
}
