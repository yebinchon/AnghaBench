
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_7__ {TYPE_4__* fsap_data; int * vtable; } ;
struct TYPE_6__ {int revision; } ;
struct TYPE_8__ {TYPE_1__ rev_item; int txn_id; int copy_id; int node_id; } ;
struct TYPE_9__ {TYPE_2__ generic_id; TYPE_3__ private_id; } ;
typedef TYPE_4__ fs_fs__id_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int id_vtable ;

svn_fs_id_t *
svn_fs_fs__id_txn_create(const svn_fs_fs__id_part_t *node_id,
                         const svn_fs_fs__id_part_t *copy_id,
                         const svn_fs_fs__id_part_t *txn_id,
                         apr_pool_t *pool)
{
  fs_fs__id_t *id = apr_pcalloc(pool, sizeof(*id));

  id->private_id.node_id = *node_id;
  id->private_id.copy_id = *copy_id;
  id->private_id.txn_id = *txn_id;
  id->private_id.rev_item.revision = SVN_INVALID_REVNUM;

  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = id;

  return (svn_fs_id_t *)id;
}
