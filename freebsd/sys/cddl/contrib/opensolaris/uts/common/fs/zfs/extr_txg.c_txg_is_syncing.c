
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_syncing_txg; int tx_sync_lock; } ;
typedef TYPE_1__ tx_state_t ;
struct TYPE_5__ {TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

__attribute__((used)) static boolean_t
txg_is_syncing(dsl_pool_t *dp)
{
 tx_state_t *tx = &dp->dp_tx;
 ASSERT(MUTEX_HELD(&tx->tx_sync_lock));
 return (tx->tx_syncing_txg != 0);
}
