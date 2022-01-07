
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int tx_objset; } ;
typedef TYPE_1__ dmu_tx_t ;
struct TYPE_7__ {int txh_space_towrite; } ;
typedef TYPE_2__ dmu_tx_hold_t ;


 int FTAG ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int THT_SPILL ;
 TYPE_2__* dmu_tx_hold_object_impl (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int zfs_refcount_add_many (int *,int ,int ) ;

void
dmu_tx_hold_spill(dmu_tx_t *tx, uint64_t object)
{
 dmu_tx_hold_t *txh;

 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset, object,
     THT_SPILL, 0, 0);
 if (txh != ((void*)0))
  (void) zfs_refcount_add_many(&txh->txh_space_towrite,
      SPA_OLD_MAXBLOCKSIZE, FTAG);
}
