
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {int spa_root_vdev; TYPE_1__ spa_uberblock; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_12__ {scalar_t__ tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_13__ {TYPE_2__* dp_spa; } ;


 int ASSERT (int) ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 scalar_t__ TXG_INITIAL ;
 TYPE_8__* dmu_tx_pool (TYPE_3__*) ;
 int spa_history_log_internal (TYPE_2__*,char*,TYPE_3__*,char*,scalar_t__) ;
 scalar_t__ spa_version (TYPE_2__*) ;
 int vdev_config_dirty (int ) ;

__attribute__((used)) static void
spa_sync_version(void *arg, dmu_tx_t *tx)
{
 uint64_t *versionp = arg;
 uint64_t version = *versionp;
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;




 ASSERT(tx->tx_txg != TXG_INITIAL);

 ASSERT(SPA_VERSION_IS_SUPPORTED(version));
 ASSERT(version >= spa_version(spa));

 spa->spa_uberblock.ub_version = version;
 vdev_config_dirty(spa->spa_root_vdev);
 spa_history_log_internal(spa, "set", tx, "version=%lld", version);
}
