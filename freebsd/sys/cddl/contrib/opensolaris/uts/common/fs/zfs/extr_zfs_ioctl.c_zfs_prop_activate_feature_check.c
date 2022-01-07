
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
typedef int spa_feature_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {int * dp_spa; } ;


 int EBUSY ;
 int SET_ERROR (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int spa_feature_is_active (int *,int ) ;

__attribute__((used)) static int
zfs_prop_activate_feature_check(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 spa_feature_t *featurep = arg;

 if (!spa_feature_is_active(spa, *featurep))
  return (0);
 else
  return (SET_ERROR(EBUSY));
}
