
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_14__ {void* sav_sync; int sav_config; int sav_object; } ;
struct TYPE_13__ {void* sav_sync; int sav_config; int sav_object; } ;
struct TYPE_15__ {TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; int * spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef scalar_t__ spa_import_type_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 void* B_TRUE ;
 int DMU_POOL_L2CACHE ;
 int DMU_POOL_SPARES ;
 int EIO ;
 int ENOENT ;
 int FTAG ;
 int RW_WRITER ;
 int SCL_ALL ;
 scalar_t__ SPA_IMPORT_ASSEMBLE ;
 scalar_t__ SPA_VERSION_L2CACHE ;
 scalar_t__ SPA_VERSION_SPARES ;
 int VDEV_AUX_CORRUPT_DATA ;
 scalar_t__ load_nvlist (TYPE_3__*,int ,int *) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int spa_dir_prop (TYPE_3__*,int ,int *,int ) ;
 int spa_load_failed (TYPE_3__*,char*) ;
 int spa_load_l2cache (TYPE_3__*) ;
 int spa_load_spares (TYPE_3__*) ;
 int spa_vdev_err (int *,int ,int ) ;
 scalar_t__ spa_version (TYPE_3__*) ;

__attribute__((used)) static int
spa_ld_open_aux_vdevs(spa_t *spa, spa_import_type_t type)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;
 error = spa_dir_prop(spa, DMU_POOL_SPARES, &spa->spa_spares.sav_object,
     B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 if (error == 0 && type != SPA_IMPORT_ASSEMBLE) {
  ASSERT(spa_version(spa) >= SPA_VERSION_SPARES);
  if (load_nvlist(spa, spa->spa_spares.sav_object,
      &spa->spa_spares.sav_config) != 0) {
   spa_load_failed(spa, "error loading spares nvlist");
   return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
  }

  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
  spa_load_spares(spa);
  spa_config_exit(spa, SCL_ALL, FTAG);
 } else if (error == 0) {
  spa->spa_spares.sav_sync = B_TRUE;
 }




 error = spa_dir_prop(spa, DMU_POOL_L2CACHE,
     &spa->spa_l2cache.sav_object, B_FALSE);
 if (error != 0 && error != ENOENT)
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 if (error == 0 && type != SPA_IMPORT_ASSEMBLE) {
  ASSERT(spa_version(spa) >= SPA_VERSION_L2CACHE);
  if (load_nvlist(spa, spa->spa_l2cache.sav_object,
      &spa->spa_l2cache.sav_config) != 0) {
   spa_load_failed(spa, "error loading l2cache nvlist");
   return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
  }

  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
  spa_load_l2cache(spa);
  spa_config_exit(spa, SCL_ALL, FTAG);
 } else if (error == 0) {
  spa->spa_l2cache.sav_sync = B_TRUE;
 }

 return (0);
}
