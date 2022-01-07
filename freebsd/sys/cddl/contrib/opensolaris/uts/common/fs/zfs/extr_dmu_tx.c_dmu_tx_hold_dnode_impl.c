
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint64_t ;
typedef enum dmu_tx_hold_type { ____Placeholder_dmu_tx_hold_type } dmu_tx_hold_type ;
struct TYPE_10__ {scalar_t__ dn_assigned_txg; int dn_mtx; int dn_tx_holds; int dn_holds; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_11__ {scalar_t__ tx_txg; int tx_holds; } ;
typedef TYPE_2__ dmu_tx_t ;
struct TYPE_12__ {int txh_type; void* txh_arg2; void* txh_arg1; int txh_memory_tohold; int txh_space_towrite; TYPE_1__* txh_dnode; TYPE_2__* txh_tx; } ;
typedef TYPE_3__ dmu_tx_hold_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 TYPE_3__* kmem_zalloc (int,int ) ;
 int list_insert_tail (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_add (int *,TYPE_2__*) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static dmu_tx_hold_t *
dmu_tx_hold_dnode_impl(dmu_tx_t *tx, dnode_t *dn, enum dmu_tx_hold_type type,
    uint64_t arg1, uint64_t arg2)
{
 dmu_tx_hold_t *txh;

 if (dn != ((void*)0)) {
  (void) zfs_refcount_add(&dn->dn_holds, tx);
  if (tx->tx_txg != 0) {
   mutex_enter(&dn->dn_mtx);





   ASSERT(dn->dn_assigned_txg == 0);
   dn->dn_assigned_txg = tx->tx_txg;
   (void) zfs_refcount_add(&dn->dn_tx_holds, tx);
   mutex_exit(&dn->dn_mtx);
  }
 }

 txh = kmem_zalloc(sizeof (dmu_tx_hold_t), KM_SLEEP);
 txh->txh_tx = tx;
 txh->txh_dnode = dn;
 zfs_refcount_create(&txh->txh_space_towrite);
 zfs_refcount_create(&txh->txh_memory_tohold);
 txh->txh_type = type;
 txh->txh_arg1 = arg1;
 txh->txh_arg2 = arg2;
 list_insert_tail(&tx->tx_holds, txh);

 return (txh);
}
