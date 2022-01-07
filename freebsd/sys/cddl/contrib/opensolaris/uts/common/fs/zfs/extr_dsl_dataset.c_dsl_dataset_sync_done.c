
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * os_synced_dnodes; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_7__ {int ds_dbuf; int ds_deadlist; int ds_pending_deadlist; TYPE_1__* ds_objset; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int bplist_iterate (int *,int ,int *,int *) ;
 int deadlist_enqueue_cb ;
 int dmu_buf_rele (int ,TYPE_2__*) ;
 int dmu_objset_is_dirty (TYPE_1__*,int ) ;
 int dmu_tx_get_txg (int *) ;
 int multilist_destroy (int *) ;

void
dsl_dataset_sync_done(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 objset_t *os = ds->ds_objset;

 bplist_iterate(&ds->ds_pending_deadlist,
     deadlist_enqueue_cb, &ds->ds_deadlist, tx);

 if (os->os_synced_dnodes != ((void*)0)) {
  multilist_destroy(os->os_synced_dnodes);
  os->os_synced_dnodes = ((void*)0);
 }

 ASSERT(!dmu_objset_is_dirty(os, dmu_tx_get_txg(tx)));

 dmu_buf_rele(ds->ds_dbuf, ds);
}
