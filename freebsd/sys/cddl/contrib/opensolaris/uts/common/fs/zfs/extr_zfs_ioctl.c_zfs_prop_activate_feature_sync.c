
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
typedef int spa_feature_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {int * dp_spa; } ;


 TYPE_1__* dmu_tx_pool (int *) ;
 int spa_feature_incr (int *,int ,int *) ;

__attribute__((used)) static void
zfs_prop_activate_feature_sync(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 spa_feature_t *featurep = arg;

 spa_feature_incr(spa, *featurep, tx);
}
