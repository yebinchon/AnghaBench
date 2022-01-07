
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int tx_objset; int tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int ASSERT0 (int ) ;
 int THT_ZAP ;
 int * dmu_tx_hold_object_impl (TYPE_1__*,int ,int ,int ,int,uintptr_t) ;
 int dmu_tx_hold_zap_impl (int *,char const*) ;

void
dmu_tx_hold_zap(dmu_tx_t *tx, uint64_t object, int add, const char *name)
{
 dmu_tx_hold_t *txh;

 ASSERT0(tx->tx_txg);

 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset,
     object, THT_ZAP, add, (uintptr_t)name);
 if (txh != ((void*)0))
  dmu_tx_hold_zap_impl(txh, name);
}
