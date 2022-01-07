
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int dnode_t ;
struct TYPE_8__ {int tx_holds; int tx_callbacks; int txh_memory_tohold; int txh_space_towrite; int * txh_dnode; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef TYPE_1__ dmu_tx_hold_t ;


 int dnode_rele (int *,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int zfs_refcount_count (int *) ;
 int zfs_refcount_destroy_many (int *,int ) ;

__attribute__((used)) static void
dmu_tx_destroy(dmu_tx_t *tx)
{
 dmu_tx_hold_t *txh;

 while ((txh = list_head(&tx->tx_holds)) != ((void*)0)) {
  dnode_t *dn = txh->txh_dnode;

  list_remove(&tx->tx_holds, txh);
  zfs_refcount_destroy_many(&txh->txh_space_towrite,
      zfs_refcount_count(&txh->txh_space_towrite));
  zfs_refcount_destroy_many(&txh->txh_memory_tohold,
      zfs_refcount_count(&txh->txh_memory_tohold));
  kmem_free(txh, sizeof (dmu_tx_hold_t));
  if (dn != ((void*)0))
   dnode_rele(dn, tx);
 }

 list_destroy(&tx->tx_callbacks);
 list_destroy(&tx->tx_holds);
 kmem_free(tx, sizeof (dmu_tx_t));
}
