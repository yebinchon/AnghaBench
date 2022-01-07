
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ spa_checkpoint_txg; int * spa_vdev_removal; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {TYPE_1__* dp_spa; } ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_ERR_DEVRM_IN_PROGRESS ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int ZFS_ERR_VDEV_TOO_BIG ;
 TYPE_5__* dmu_tx_pool (int *) ;
 scalar_t__ spa_feature_is_active (TYPE_1__*,int ) ;
 int spa_feature_is_enabled (TYPE_1__*,int ) ;
 int spa_top_vdevs_spacemap_addressable (TYPE_1__*) ;

__attribute__((used)) static int
spa_checkpoint_check(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;

 if (!spa_feature_is_enabled(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (SET_ERROR(ENOTSUP));

 if (!spa_top_vdevs_spacemap_addressable(spa))
  return (SET_ERROR(ZFS_ERR_VDEV_TOO_BIG));

 if (spa->spa_vdev_removal != ((void*)0))
  return (SET_ERROR(ZFS_ERR_DEVRM_IN_PROGRESS));

 if (spa->spa_checkpoint_txg != 0)
  return (SET_ERROR(ZFS_ERR_CHECKPOINT_EXISTS));

 if (spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (SET_ERROR(ZFS_ERR_DISCARDING_CHECKPOINT));

 return (0);
}
