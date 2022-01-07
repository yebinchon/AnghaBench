
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int txn_id; } ;
struct TYPE_4__ {TYPE_1__ private_id; } ;
typedef TYPE_2__ fs_fs__id_t ;


 int svn_fs_fs__id_txn_used (int *) ;

svn_boolean_t
svn_fs_fs__id_is_txn(const svn_fs_id_t *fs_id)
{
  const fs_fs__id_t *id = (const fs_fs__id_t *)fs_id;

  return svn_fs_fs__id_txn_used(&id->private_id.txn_id);
}
