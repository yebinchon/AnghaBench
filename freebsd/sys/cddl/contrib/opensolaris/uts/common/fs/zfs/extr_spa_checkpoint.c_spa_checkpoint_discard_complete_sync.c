
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sci_timestamp; } ;
struct TYPE_6__ {TYPE_1__ spa_checkpoint_info; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;


 int SPA_FEATURE_POOL_CHECKPOINT ;
 int spa_feature_decr (TYPE_2__*,int ,int *) ;
 int spa_history_log_internal (TYPE_2__*,char*,int *,char*) ;

__attribute__((used)) static void
spa_checkpoint_discard_complete_sync(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = arg;

 spa->spa_checkpoint_info.sci_timestamp = 0;

 spa_feature_decr(spa, SPA_FEATURE_POOL_CHECKPOINT, tx);

 spa_history_log_internal(spa, "spa discard checkpoint", tx,
     "finished discarding checkpointed state from the pool");
}
