
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int dp_lock; int * dp_dirty_pertxg; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_7__ {size_t tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;


 size_t TXG_MASK ;
 int dsl_pool_dirty_delta (TYPE_1__*,scalar_t__) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_pool_dirty_space(dsl_pool_t *dp, int64_t space, dmu_tx_t *tx)
{
 if (space > 0) {
  mutex_enter(&dp->dp_lock);
  dp->dp_dirty_pertxg[tx->tx_txg & TXG_MASK] += space;
  dsl_pool_dirty_delta(dp, space);
  mutex_exit(&dp->dp_lock);
 }
}
