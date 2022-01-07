
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ tx_txg; int tx_txgh; int tx_dirty_delayed; int tx_pool; } ;
typedef TYPE_1__ dmu_tx_t ;


 int ASSERT (int) ;
 int ASSERT0 (int) ;
 int B_TRUE ;
 int ERESTART ;
 int IMPLY (int,int) ;
 int TXG_NOTHROTTLE ;
 int TXG_WAIT ;
 int dmu_tx_try_assign (TYPE_1__*,int) ;
 int dmu_tx_unassign (TYPE_1__*) ;
 int dmu_tx_wait (TYPE_1__*) ;
 int dsl_pool_config_held (int ) ;
 int dsl_pool_sync_context (int ) ;
 int txg_rele_to_quiesce (int *) ;

int
dmu_tx_assign(dmu_tx_t *tx, uint64_t txg_how)
{
 int err;

 ASSERT(tx->tx_txg == 0);
 ASSERT0(txg_how & ~(TXG_WAIT | TXG_NOTHROTTLE));
 ASSERT(!dsl_pool_sync_context(tx->tx_pool));


 IMPLY((txg_how & TXG_WAIT), !dsl_pool_config_held(tx->tx_pool));

 if ((txg_how & TXG_NOTHROTTLE))
  tx->tx_dirty_delayed = B_TRUE;

 while ((err = dmu_tx_try_assign(tx, txg_how)) != 0) {
  dmu_tx_unassign(tx);

  if (err != ERESTART || !(txg_how & TXG_WAIT))
   return (err);

  dmu_tx_wait(tx);
 }

 txg_rele_to_quiesce(&tx->tx_txgh);

 return (0);
}
