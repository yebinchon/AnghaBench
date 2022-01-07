
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tx_threads; int tx_sync_lock; void* tx_sync_thread; void* tx_quiesce_thread; } ;
typedef TYPE_1__ tx_state_t ;
struct TYPE_7__ {int dp_spa; TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;


 int ASSERT0 (int) ;
 int TS_RUN ;
 int dprintf (char*,TYPE_2__*) ;
 int minclsyspri ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_proc (int ) ;
 void* thread_create (int *,int,int ,TYPE_2__*,int ,int ,int ,int ) ;
 int txg_quiesce_thread ;
 int txg_sync_thread ;

void
txg_sync_start(dsl_pool_t *dp)
{
 tx_state_t *tx = &dp->dp_tx;

 mutex_enter(&tx->tx_sync_lock);

 dprintf("pool %p\n", dp);

 ASSERT0(tx->tx_threads);

 tx->tx_threads = 2;

 tx->tx_quiesce_thread = thread_create(((void*)0), 0, txg_quiesce_thread,
     dp, 0, spa_proc(dp->dp_spa), TS_RUN, minclsyspri);






 tx->tx_sync_thread = thread_create(((void*)0), 32<<10, txg_sync_thread,
     dp, 0, spa_proc(dp->dp_spa), TS_RUN, minclsyspri);

 mutex_exit(&tx->tx_sync_lock);
}
