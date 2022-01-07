
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_16__ {int os_dsl_dataset; int ** os_dirty_dnodes; } ;
typedef TYPE_2__ objset_t ;
typedef int multilist_t ;
typedef int multilist_sublist_t ;
struct TYPE_17__ {scalar_t__ dn_free_txg; scalar_t__ dn_datablksz; int dn_dbuf; int dn_object; int * dn_next_bonustype; int * dn_next_blksz; int * dn_next_bonuslen; int dn_dbufs; int dn_holds; int * dn_dirty_link; int dn_mtx; scalar_t__ dn_allocated_txg; TYPE_1__* dn_phys; TYPE_2__* dn_objset; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_18__ {size_t tx_txg; } ;
typedef TYPE_4__ dmu_tx_t ;
struct TYPE_15__ {scalar_t__ dn_type; } ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int B_TRUE ;
 scalar_t__ DMU_OBJECT_IS_SPECIAL (int ) ;
 int DNODE_VERIFY (TYPE_3__*) ;
 size_t TXG_MASK ;
 int VERIFY (int ) ;
 int avl_is_empty (int *) ;
 int dbuf_dirty (int ,TYPE_4__*) ;
 int dmu_objset_userquota_get_ids (TYPE_3__*,int ,TYPE_4__*) ;
 int dnode_add_ref (TYPE_3__*,void*) ;
 int dprintf_ds (int ,char*,int ,size_t) ;
 int dsl_dataset_dirty (int ,TYPE_4__*) ;
 scalar_t__ multilist_link_active (int *) ;
 int multilist_sublist_insert_head (int *,TYPE_3__*) ;
 int * multilist_sublist_lock_obj (int *,TYPE_3__*) ;
 int multilist_sublist_unlock (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_is_zero (int *) ;

void
dnode_setdirty(dnode_t *dn, dmu_tx_t *tx)
{
 objset_t *os = dn->dn_objset;
 uint64_t txg = tx->tx_txg;

 if (DMU_OBJECT_IS_SPECIAL(dn->dn_object)) {
  dsl_dataset_dirty(os->os_dsl_dataset, tx);
  return;
 }

 DNODE_VERIFY(dn);
 dmu_objset_userquota_get_ids(dn, B_TRUE, tx);

 multilist_t *dirtylist = os->os_dirty_dnodes[txg & TXG_MASK];
 multilist_sublist_t *mls = multilist_sublist_lock_obj(dirtylist, dn);




 if (multilist_link_active(&dn->dn_dirty_link[txg & TXG_MASK])) {
  multilist_sublist_unlock(mls);
  return;
 }

 ASSERT(!zfs_refcount_is_zero(&dn->dn_holds) ||
     !avl_is_empty(&dn->dn_dbufs));
 ASSERT(dn->dn_datablksz != 0);
 ASSERT0(dn->dn_next_bonuslen[txg&TXG_MASK]);
 ASSERT0(dn->dn_next_blksz[txg&TXG_MASK]);
 ASSERT0(dn->dn_next_bonustype[txg&TXG_MASK]);

 dprintf_ds(os->os_dsl_dataset, "obj=%llu txg=%llu\n",
     dn->dn_object, txg);

 multilist_sublist_insert_head(mls, dn);

 multilist_sublist_unlock(mls);
 VERIFY(dnode_add_ref(dn, (void *)(uintptr_t)tx->tx_txg));

 (void) dbuf_dirty(dn->dn_dbuf, tx);

 dsl_dataset_dirty(os->os_dsl_dataset, tx);
}
