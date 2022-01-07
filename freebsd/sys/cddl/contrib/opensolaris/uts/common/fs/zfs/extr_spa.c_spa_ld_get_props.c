
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int zcs_bytes; } ;
struct TYPE_10__ {scalar_t__ spa_deflate; scalar_t__ spa_creation_version; scalar_t__ spa_errlog_last; scalar_t__ spa_errlog_scrub; scalar_t__ spa_history; scalar_t__ spa_all_vdev_zaps; scalar_t__ spa_delegation; scalar_t__ spa_pool_props_object; scalar_t__ spa_bootfs; scalar_t__ spa_failmode; scalar_t__ spa_autoexpand; scalar_t__ spa_dedup_ditto; int spa_autoreplace; scalar_t__ spa_missing_tvds; scalar_t__ spa_load_state; int * spa_root_vdev; int spa_avz_action; int spa_config_object; int spa_meta_objset; int spa_deferred_bpobj; TYPE_1__ spa_cksum_salt; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int ASSERT0 (int ) ;
 int AVZ_ACTION_DESTROY ;
 int AVZ_ACTION_INITIALIZE ;
 int B_FALSE ;
 int B_TRUE ;
 int DMU_POOL_CHECKSUM_SALT ;
 int DMU_POOL_CREATION_VERSION ;
 int DMU_POOL_DEFLATE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ERRLOG_LAST ;
 int DMU_POOL_ERRLOG_SCRUB ;
 int DMU_POOL_HISTORY ;
 int DMU_POOL_PROPS ;
 int DMU_POOL_SYNC_BPOBJ ;
 int DMU_POOL_VDEV_ZAP_MAP ;
 int EIO ;
 int ENOENT ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int VDEV_AUX_CORRUPT_DATA ;
 int VERIFY (int) ;
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ;
 int ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS ;
 int ZPOOL_PROP_AUTOEXPAND ;
 int ZPOOL_PROP_AUTOREPLACE ;
 int ZPOOL_PROP_BOOTFS ;
 int ZPOOL_PROP_DEDUPDITTO ;
 int ZPOOL_PROP_DELEGATION ;
 int ZPOOL_PROP_FAILUREMODE ;
 int bpobj_open (int *,int ,scalar_t__) ;
 scalar_t__ load_nvlist (TYPE_2__*,int ,int **) ;
 int nvlist_exists (int *,int ) ;
 int nvlist_free (int *) ;
 int random_get_pseudo_bytes (int ,int) ;
 int spa_dir_prop (TYPE_2__*,int ,scalar_t__*,int ) ;
 int spa_load_failed (TYPE_2__*,char*,...) ;
 int spa_load_note (TYPE_2__*,char*) ;
 int spa_prop_find (TYPE_2__*,int ,scalar_t__*) ;
 int spa_vdev_err (int *,int ,int ) ;
 int vdev_count_verify_zaps (int *) ;
 int zap_lookup (int ,int ,int ,int,int,int ) ;
 scalar_t__ zpool_prop_default_numeric (int ) ;

__attribute__((used)) static int
spa_ld_get_props(spa_t *spa)
{
 int error = 0;
 uint64_t obj;
 vdev_t *rvd = spa->spa_root_vdev;


 error = zap_lookup(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_CHECKSUM_SALT, 1,
     sizeof (spa->spa_cksum_salt.zcs_bytes),
     spa->spa_cksum_salt.zcs_bytes);
 if (error == ENOENT) {

  (void) random_get_pseudo_bytes(spa->spa_cksum_salt.zcs_bytes,
      sizeof (spa->spa_cksum_salt.zcs_bytes));
 } else if (error != 0) {
  spa_load_failed(spa, "unable to retrieve checksum salt from "
      "MOS [error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }

 if (spa_dir_prop(spa, DMU_POOL_SYNC_BPOBJ, &obj, B_TRUE) != 0)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 error = bpobj_open(&spa->spa_deferred_bpobj, spa->spa_meta_objset, obj);
 if (error != 0) {
  spa_load_failed(spa, "error opening deferred-frees bpobj "
      "[error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }






 error = spa_dir_prop(spa, DMU_POOL_DEFLATE, &spa->spa_deflate, B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

 error = spa_dir_prop(spa, DMU_POOL_CREATION_VERSION,
     &spa->spa_creation_version, B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));





 error = spa_dir_prop(spa, DMU_POOL_ERRLOG_LAST, &spa->spa_errlog_last,
     B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

 error = spa_dir_prop(spa, DMU_POOL_ERRLOG_SCRUB,
     &spa->spa_errlog_scrub, B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));





 error = spa_dir_prop(spa, DMU_POOL_HISTORY, &spa->spa_history, B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 nvlist_t *mos_config;
 if (load_nvlist(spa, spa->spa_config_object, &mos_config) != 0) {
  spa_load_failed(spa, "unable to retrieve MOS config");
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }

 error = spa_dir_prop(spa, DMU_POOL_VDEV_ZAP_MAP,
     &spa->spa_all_vdev_zaps, B_FALSE);

 if (error == ENOENT) {
  VERIFY(!nvlist_exists(mos_config,
      ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS));
  spa->spa_avz_action = AVZ_ACTION_INITIALIZE;
  ASSERT0(vdev_count_verify_zaps(spa->spa_root_vdev));
 } else if (error != 0) {
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 } else if (!nvlist_exists(mos_config, ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS)) {





  spa->spa_avz_action = AVZ_ACTION_DESTROY;




  ASSERT0(vdev_count_verify_zaps(spa->spa_root_vdev));
 }
 nvlist_free(mos_config);

 spa->spa_delegation = zpool_prop_default_numeric(ZPOOL_PROP_DELEGATION);

 error = spa_dir_prop(spa, DMU_POOL_PROPS, &spa->spa_pool_props_object,
     B_FALSE);
 if (error && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

 if (error == 0) {
  uint64_t autoreplace;

  spa_prop_find(spa, ZPOOL_PROP_BOOTFS, &spa->spa_bootfs);
  spa_prop_find(spa, ZPOOL_PROP_AUTOREPLACE, &autoreplace);
  spa_prop_find(spa, ZPOOL_PROP_DELEGATION, &spa->spa_delegation);
  spa_prop_find(spa, ZPOOL_PROP_FAILUREMODE, &spa->spa_failmode);
  spa_prop_find(spa, ZPOOL_PROP_AUTOEXPAND, &spa->spa_autoexpand);
  spa_prop_find(spa, ZPOOL_PROP_DEDUPDITTO,
      &spa->spa_dedup_ditto);

  spa->spa_autoreplace = (autoreplace != 0);
 }






 if (spa->spa_missing_tvds > 0 &&
     spa->spa_failmode != ZIO_FAILURE_MODE_CONTINUE &&
     spa->spa_load_state != SPA_LOAD_TRYIMPORT) {
  spa_load_note(spa, "forcing failmode to 'continue' "
      "as some top level vdevs are missing");
  spa->spa_failmode = ZIO_FAILURE_MODE_CONTINUE;
 }

 return (0);
}
