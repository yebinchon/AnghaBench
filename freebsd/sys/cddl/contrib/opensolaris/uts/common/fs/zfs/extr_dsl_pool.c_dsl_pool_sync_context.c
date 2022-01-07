
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_sync_thread; } ;
struct TYPE_5__ {int dp_sync_taskq; int dp_spa; TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;


 scalar_t__ curthread ;
 scalar_t__ spa_is_initializing (int ) ;
 scalar_t__ taskq_member (int ,scalar_t__) ;

int
dsl_pool_sync_context(dsl_pool_t *dp)
{
 return (curthread == dp->dp_tx.tx_sync_thread ||
     spa_is_initializing(dp->dp_spa) ||
     taskq_member(dp->dp_sync_taskq, curthread));
}
