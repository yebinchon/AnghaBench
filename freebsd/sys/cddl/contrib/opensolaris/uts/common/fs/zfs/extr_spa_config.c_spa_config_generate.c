
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {unsigned long long vdev_guid; struct TYPE_20__* vdev_top; scalar_t__ vdev_islog; scalar_t__ vdev_isspare; } ;
typedef TYPE_1__ vdev_t ;
typedef unsigned long long uint64_t ;
struct TYPE_21__ {unsigned long long spa_config_txg; int spa_import_flags; char* spa_comment; int * spa_label_features; int * spa_config_splitting; int spa_config; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;
typedef int ddt_stat_t ;
typedef int ddt_object_t ;
typedef int ddt_histogram_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_22__ {char* nodename; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int FTAG ;
 int KM_SLEEP ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 scalar_t__ SPA_LOAD_NONE ;
 int VDEV_CONFIG_MOS ;
 int ZFS_IMPORT_TEMP_NAME ;
 int ZPOOL_CONFIG_COMMENT ;
 int ZPOOL_CONFIG_DDT_HISTOGRAM ;
 int ZPOOL_CONFIG_DDT_OBJ_STATS ;
 int ZPOOL_CONFIG_DDT_STATS ;
 int ZPOOL_CONFIG_FEATURES_FOR_READ ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_HOSTNAME ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_IS_SPARE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int ZPOOL_CONFIG_SPLIT ;
 int ZPOOL_CONFIG_SPLIT_GUID ;
 int ZPOOL_CONFIG_TOP_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_CONFIG_VERSION ;
 int ddt_get_dedup_histogram (TYPE_2__*,int *) ;
 int ddt_get_dedup_object_stats (TYPE_2__*,int *) ;
 int ddt_get_dedup_stats (TYPE_2__*,int *) ;
 int fnvlist_add_boolean (int *,int ) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_string (int *,int ,char*) ;
 int fnvlist_add_uint64 (int *,int ,unsigned long long) ;
 int fnvlist_add_uint64_array (int *,int ,unsigned long long*,int) ;
 int * fnvlist_alloc () ;
 char* fnvlist_lookup_string (int ,int ) ;
 int kmem_free (int *,int) ;
 int * kmem_zalloc (int,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,unsigned long long*) ;
 int spa_config_enter (TYPE_2__*,int,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int,int ) ;
 int spa_config_held (TYPE_2__*,int,int ) ;
 unsigned long long spa_guid (TYPE_2__*) ;
 scalar_t__ spa_load_state (TYPE_2__*) ;
 char* spa_name (TYPE_2__*) ;
 unsigned long long spa_state (TYPE_2__*) ;
 unsigned long long spa_version (TYPE_2__*) ;
 TYPE_6__ utsname ;
 int * vdev_config_generate (TYPE_2__*,TYPE_1__*,int,int) ;
 int vdev_top_config_generate (TYPE_2__*,int *) ;
 unsigned long zone_get_hostid (int *) ;

nvlist_t *
spa_config_generate(spa_t *spa, vdev_t *vd, uint64_t txg, int getstats)
{
 nvlist_t *config, *nvroot;
 vdev_t *rvd = spa->spa_root_vdev;
 unsigned long hostid = 0;
 boolean_t locked = B_FALSE;
 uint64_t split_guid;
 char *pool_name;

 if (vd == ((void*)0)) {
  vd = rvd;
  locked = B_TRUE;
  spa_config_enter(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
 }

 ASSERT(spa_config_held(spa, SCL_CONFIG | SCL_STATE, RW_READER) ==
     (SCL_CONFIG | SCL_STATE));




 if (txg == -1ULL)
  txg = spa->spa_config_txg;
 if (spa->spa_import_flags & ZFS_IMPORT_TEMP_NAME) {
  pool_name = fnvlist_lookup_string(spa->spa_config,
      ZPOOL_CONFIG_POOL_NAME);
 } else {
  pool_name = spa_name(spa);
 }

 config = fnvlist_alloc();

 fnvlist_add_uint64(config, ZPOOL_CONFIG_VERSION, spa_version(spa));
 fnvlist_add_string(config, ZPOOL_CONFIG_POOL_NAME, pool_name);
 fnvlist_add_uint64(config, ZPOOL_CONFIG_POOL_STATE, spa_state(spa));
 fnvlist_add_uint64(config, ZPOOL_CONFIG_POOL_TXG, txg);
 fnvlist_add_uint64(config, ZPOOL_CONFIG_POOL_GUID, spa_guid(spa));
 if (spa->spa_comment != ((void*)0)) {
  fnvlist_add_string(config, ZPOOL_CONFIG_COMMENT,
      spa->spa_comment);
 }

 hostid = zone_get_hostid(((void*)0));

 if (hostid != 0) {
  fnvlist_add_uint64(config, ZPOOL_CONFIG_HOSTID, hostid);
 }
 fnvlist_add_string(config, ZPOOL_CONFIG_HOSTNAME, utsname.nodename);

 int config_gen_flags = 0;
 if (vd != rvd) {
  fnvlist_add_uint64(config, ZPOOL_CONFIG_TOP_GUID,
      vd->vdev_top->vdev_guid);
  fnvlist_add_uint64(config, ZPOOL_CONFIG_GUID,
      vd->vdev_guid);
  if (vd->vdev_isspare) {
   fnvlist_add_uint64(config,
       ZPOOL_CONFIG_IS_SPARE, 1ULL);
  }
  if (vd->vdev_islog) {
   fnvlist_add_uint64(config,
       ZPOOL_CONFIG_IS_LOG, 1ULL);
  }
  vd = vd->vdev_top;
 } else {




  if (spa->spa_config_splitting != ((void*)0))
   fnvlist_add_nvlist(config, ZPOOL_CONFIG_SPLIT,
       spa->spa_config_splitting);
  fnvlist_add_boolean(config,
      ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS);

  config_gen_flags |= VDEV_CONFIG_MOS;
 }





 vdev_top_config_generate(spa, config);




 if (spa->spa_config_splitting != ((void*)0) &&
     nvlist_lookup_uint64(spa->spa_config_splitting,
     ZPOOL_CONFIG_SPLIT_GUID, &split_guid) == 0) {
  fnvlist_add_uint64(config, ZPOOL_CONFIG_SPLIT_GUID,
      split_guid);
 }

 nvroot = vdev_config_generate(spa, vd, getstats, config_gen_flags);
 fnvlist_add_nvlist(config, ZPOOL_CONFIG_VDEV_TREE, nvroot);
 nvlist_free(nvroot);




 fnvlist_add_nvlist(config, ZPOOL_CONFIG_FEATURES_FOR_READ,
     spa->spa_label_features);

 if (getstats && spa_load_state(spa) == SPA_LOAD_NONE) {
  ddt_histogram_t *ddh;
  ddt_stat_t *dds;
  ddt_object_t *ddo;

  ddh = kmem_zalloc(sizeof (ddt_histogram_t), KM_SLEEP);
  ddt_get_dedup_histogram(spa, ddh);
  fnvlist_add_uint64_array(config,
      ZPOOL_CONFIG_DDT_HISTOGRAM,
      (uint64_t *)ddh, sizeof (*ddh) / sizeof (uint64_t));
  kmem_free(ddh, sizeof (ddt_histogram_t));

  ddo = kmem_zalloc(sizeof (ddt_object_t), KM_SLEEP);
  ddt_get_dedup_object_stats(spa, ddo);
  fnvlist_add_uint64_array(config,
      ZPOOL_CONFIG_DDT_OBJ_STATS,
      (uint64_t *)ddo, sizeof (*ddo) / sizeof (uint64_t));
  kmem_free(ddo, sizeof (ddt_object_t));

  dds = kmem_zalloc(sizeof (ddt_stat_t), KM_SLEEP);
  ddt_get_dedup_stats(spa, dds);
  fnvlist_add_uint64_array(config,
      ZPOOL_CONFIG_DDT_STATS,
      (uint64_t *)dds, sizeof (*dds) / sizeof (uint64_t));
  kmem_free(dds, sizeof (ddt_stat_t));
 }

 if (locked)
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);

 return (config);
}
