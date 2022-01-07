
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int tx_objset; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int THT_FREE ;
 int dmu_tx_hold_free_impl (int *,int ,int ) ;
 int * dmu_tx_hold_object_impl (TYPE_1__*,int ,int ,int ,int ,int ) ;

void
dmu_tx_hold_free(dmu_tx_t *tx, uint64_t object, uint64_t off, uint64_t len)
{
 dmu_tx_hold_t *txh;

 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset,
     object, THT_FREE, off, len);
 if (txh != ((void*)0))
  (void) dmu_tx_hold_free_impl(txh, off, len);
}
