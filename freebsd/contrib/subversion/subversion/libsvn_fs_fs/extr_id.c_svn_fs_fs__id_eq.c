
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int rev_item; int txn_id; int copy_id; int node_id; } ;
struct TYPE_4__ {TYPE_1__ private_id; } ;
typedef TYPE_2__ fs_fs__id_t ;


 int TRUE ;
 scalar_t__ svn_fs_fs__id_part_eq (int *,int *) ;

svn_boolean_t
svn_fs_fs__id_eq(const svn_fs_id_t *a,
                 const svn_fs_id_t *b)
{
  const fs_fs__id_t *id_a = (const fs_fs__id_t *)a;
  const fs_fs__id_t *id_b = (const fs_fs__id_t *)b;

  if (a == b)
    return TRUE;

  return svn_fs_fs__id_part_eq(&id_a->private_id.node_id,
                               &id_b->private_id.node_id)
      && svn_fs_fs__id_part_eq(&id_a->private_id.copy_id,
                               &id_b->private_id.copy_id)
      && svn_fs_fs__id_part_eq(&id_a->private_id.txn_id,
                               &id_b->private_id.txn_id)
      && svn_fs_fs__id_part_eq(&id_a->private_id.rev_item,
                               &id_b->private_id.rev_item);
}
