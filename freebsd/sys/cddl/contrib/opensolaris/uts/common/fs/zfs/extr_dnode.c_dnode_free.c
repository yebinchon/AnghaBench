
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dn_type; int dn_mtx; scalar_t__ dn_free_txg; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_8__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;


 scalar_t__ DMU_OT_NONE ;
 int dnode_setdirty (TYPE_1__*,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dnode_free(dnode_t *dn, dmu_tx_t *tx)
{
 mutex_enter(&dn->dn_mtx);
 if (dn->dn_type == DMU_OT_NONE || dn->dn_free_txg) {
  mutex_exit(&dn->dn_mtx);
  return;
 }
 dn->dn_free_txg = tx->tx_txg;
 mutex_exit(&dn->dn_mtx);

 dnode_setdirty(dn, tx);
}
