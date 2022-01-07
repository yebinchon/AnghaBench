
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;


 int SVN_INVALID_REVNUM ;

void
svn_fs_fs__id_txn_reset(svn_fs_fs__id_part_t *txn_id)
{
  txn_id->revision = SVN_INVALID_REVNUM;
  txn_id->number = 0;
}
