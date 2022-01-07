
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {unsigned long long dn_indblkshift; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_9__ {scalar_t__ tx_txg; int tx_objset; } ;
typedef TYPE_2__ dmu_tx_t ;
struct TYPE_10__ {int txh_space_towrite; TYPE_1__* txh_dnode; } ;
typedef TYPE_3__ dmu_tx_hold_t ;


 int ASSERT (int) ;
 int FTAG ;
 int THT_WRITE ;
 int dmu_tx_count_dnode (TYPE_3__*) ;
 TYPE_3__* dmu_tx_hold_object_impl (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int zfs_refcount_add_many (int *,unsigned long long,int ) ;

void
dmu_tx_hold_remap_l1indirect(dmu_tx_t *tx, uint64_t object)
{
 dmu_tx_hold_t *txh;

 ASSERT(tx->tx_txg == 0);
 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset,
     object, THT_WRITE, 0, 0);
 if (txh == ((void*)0))
  return;

 dnode_t *dn = txh->txh_dnode;
 (void) zfs_refcount_add_many(&txh->txh_space_towrite,
     1ULL << dn->dn_indblkshift, FTAG);
 dmu_tx_count_dnode(txh);
}
