
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_13__ {scalar_t__ za_first_integer; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {scalar_t__ ub_version; } ;
struct TYPE_14__ {scalar_t__ spa_avz_action; scalar_t__ spa_all_vdev_zaps; int spa_config_object; int * spa_config_syncing; TYPE_2__ spa_uberblock; TYPE_1__ spa_ubsync; int spa_root_vdev; int spa_meta_objset; int spa_config_dirty_list; } ;
typedef TYPE_4__ spa_t ;
typedef int nvlist_t ;
typedef int new_avz ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 scalar_t__ AVZ_ACTION_DESTROY ;
 scalar_t__ AVZ_ACTION_INITIALIZE ;
 scalar_t__ AVZ_ACTION_NONE ;
 scalar_t__ AVZ_ACTION_REBUILD ;
 int B_FALSE ;
 int DMU_OTN_ZAP_METADATA ;
 int DMU_OT_NONE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_VDEV_ZAP_MAP ;
 scalar_t__ ENOENT ;
 int FTAG ;
 int RW_READER ;
 int SCL_STATE ;
 int VERIFY0 (int ) ;
 int ZPOOL_CONFIG_VERSION ;
 int dmu_tx_get_txg (int *) ;
 int fnvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ list_is_empty (int *) ;
 int nvlist_free (int *) ;
 int spa_avz_build (int ,scalar_t__,int *) ;
 int spa_config_enter (TYPE_4__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int ,int ) ;
 int * spa_config_generate (TYPE_4__*,int ,int ,int ) ;
 int spa_sync_nvlist (TYPE_4__*,int ,int *,int *) ;
 int vdev_construct_zaps (int ,int *) ;
 scalar_t__ zap_create (int ,int ,int ,int ,int *) ;
 scalar_t__ zap_create_link (int ,int ,int ,int ,int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zap_destroy (int ,scalar_t__,int *) ;
 scalar_t__ zap_lookup_int (int ,scalar_t__,scalar_t__) ;
 int zap_remove (int ,int ,int ,int *) ;
 int zap_update (int ,int ,int ,int,int,scalar_t__*,int *) ;

__attribute__((used)) static void
spa_sync_config_object(spa_t *spa, dmu_tx_t *tx)
{
 nvlist_t *config;







 if (list_is_empty(&spa->spa_config_dirty_list) &&
     spa->spa_avz_action == AVZ_ACTION_NONE)
  return;

 spa_config_enter(spa, SCL_STATE, FTAG, RW_READER);

 ASSERT(spa->spa_avz_action == AVZ_ACTION_NONE ||
     spa->spa_avz_action == AVZ_ACTION_INITIALIZE ||
     spa->spa_all_vdev_zaps != 0);

 if (spa->spa_avz_action == AVZ_ACTION_REBUILD) {

  uint64_t new_avz = zap_create(spa->spa_meta_objset,
      DMU_OTN_ZAP_METADATA, DMU_OT_NONE, 0, tx);
  spa_avz_build(spa->spa_root_vdev, new_avz, tx);


  zap_cursor_t zc;
  zap_attribute_t za;

  for (zap_cursor_init(&zc, spa->spa_meta_objset,
      spa->spa_all_vdev_zaps);
      zap_cursor_retrieve(&zc, &za) == 0;
      zap_cursor_advance(&zc)) {
   uint64_t vdzap = za.za_first_integer;
   if (zap_lookup_int(spa->spa_meta_objset, new_avz,
       vdzap) == ENOENT) {




    VERIFY0(zap_destroy(spa->spa_meta_objset, vdzap,
        tx));
   }
  }

  zap_cursor_fini(&zc);


  VERIFY0(zap_destroy(spa->spa_meta_objset,
      spa->spa_all_vdev_zaps, tx));


  VERIFY0(zap_update(spa->spa_meta_objset,
      DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_VDEV_ZAP_MAP,
      sizeof (new_avz), 1, &new_avz, tx));

  spa->spa_all_vdev_zaps = new_avz;
 } else if (spa->spa_avz_action == AVZ_ACTION_DESTROY) {
  zap_cursor_t zc;
  zap_attribute_t za;


  for (zap_cursor_init(&zc, spa->spa_meta_objset,
      spa->spa_all_vdev_zaps);
      zap_cursor_retrieve(&zc, &za) == 0;
      zap_cursor_advance(&zc)) {
   uint64_t zap = za.za_first_integer;
   VERIFY0(zap_destroy(spa->spa_meta_objset, zap, tx));
  }

  zap_cursor_fini(&zc);


  VERIFY0(zap_destroy(spa->spa_meta_objset,
      spa->spa_all_vdev_zaps, tx));
  VERIFY0(zap_remove(spa->spa_meta_objset,
      DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_VDEV_ZAP_MAP, tx));
  spa->spa_all_vdev_zaps = 0;
 }

 if (spa->spa_all_vdev_zaps == 0) {
  spa->spa_all_vdev_zaps = zap_create_link(spa->spa_meta_objset,
      DMU_OTN_ZAP_METADATA, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_VDEV_ZAP_MAP, tx);
 }
 spa->spa_avz_action = AVZ_ACTION_NONE;


 vdev_construct_zaps(spa->spa_root_vdev, tx);

 config = spa_config_generate(spa, spa->spa_root_vdev,
     dmu_tx_get_txg(tx), B_FALSE);





 if (spa->spa_ubsync.ub_version < spa->spa_uberblock.ub_version)
  fnvlist_add_uint64(config, ZPOOL_CONFIG_VERSION,
      spa->spa_uberblock.ub_version);

 spa_config_exit(spa, SCL_STATE, FTAG);

 nvlist_free(spa->spa_config_syncing);
 spa->spa_config_syncing = config;

 spa_sync_nvlist(spa, spa->spa_config_object, config, tx);
}
