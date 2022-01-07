
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_7__ {int pool; struct TYPE_7__* next; int txn_id; } ;
typedef TYPE_2__ fs_fs_shared_txn_data_t ;
struct TYPE_8__ {TYPE_2__* free_txn; TYPE_2__* txns; } ;
typedef TYPE_3__ fs_fs_shared_data_t ;
struct TYPE_9__ {TYPE_3__* shared; } ;
typedef TYPE_4__ fs_fs_data_t ;


 scalar_t__ svn_fs_fs__id_part_eq (int *,int const*) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static void
free_shared_txn(svn_fs_t *fs, const svn_fs_fs__id_part_t *txn_id)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  fs_fs_shared_data_t *ffsd = ffd->shared;
  fs_fs_shared_txn_data_t *txn, *prev = ((void*)0);

  for (txn = ffsd->txns; txn; prev = txn, txn = txn->next)
    if (svn_fs_fs__id_part_eq(&txn->txn_id, txn_id))
      break;

  if (!txn)
    return;

  if (prev)
    prev->next = txn->next;
  else
    ffsd->txns = txn->next;




  if (!ffsd->free_txn)
    ffsd->free_txn = txn;
  else
    svn_pool_destroy(txn->pool);
}
