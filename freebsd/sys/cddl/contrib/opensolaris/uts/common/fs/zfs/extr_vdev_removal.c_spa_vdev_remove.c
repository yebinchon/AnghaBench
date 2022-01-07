
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ vdev_islog; } ;
typedef TYPE_3__ vdev_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int sysevent_t ;
struct TYPE_22__ {void* sav_sync; int sav_config; int * sav_vdevs; } ;
struct TYPE_21__ {void* sav_sync; int sav_config; int * sav_vdevs; } ;
struct TYPE_24__ {TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; } ;
typedef TYPE_4__ spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int EBUSY ;
 int ENOENT ;
 int ESC_ZFS_VDEV_REMOVE_AUX ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int VDEV_TYPE_L2CACHE ;
 int VDEV_TYPE_SPARE ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_SPARES ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist_array (int ,int ,int ***,int *) ;
 int * spa_event_create (TYPE_4__*,TYPE_3__*,int *,int ) ;
 int spa_event_discard (int *) ;
 int spa_event_post (int *) ;
 scalar_t__ spa_feature_is_active (TYPE_4__*,int ) ;
 scalar_t__ spa_has_checkpoint (TYPE_4__*) ;
 int spa_history_log_internal (TYPE_4__*,char*,int *,char*,int ,int ,char*) ;
 int spa_load_l2cache (TYPE_4__*) ;
 int spa_load_spares (TYPE_4__*) ;
 TYPE_3__* spa_lookup_by_guid (TYPE_4__*,int ,void*) ;
 int spa_name (TYPE_4__*) ;
 int spa_namespace_lock ;
 int * spa_nvlist_lookup_by_guid (int **,int ,int ) ;
 int spa_vdev_enter (TYPE_4__*) ;
 int spa_vdev_exit (TYPE_4__*,int *,int ,int) ;
 int spa_vdev_remove_aux (int ,int ,int **,int ,int *) ;
 int spa_vdev_remove_log (TYPE_3__*,int *) ;
 int spa_vdev_remove_top (TYPE_3__*,int *) ;
 int spa_writeable (TYPE_4__*) ;

int
spa_vdev_remove(spa_t *spa, uint64_t guid, boolean_t unspare)
{
 vdev_t *vd;
 nvlist_t **spares, **l2cache, *nv;
 uint64_t txg = 0;
 uint_t nspares, nl2cache;
 int error = 0;
 boolean_t locked = MUTEX_HELD(&spa_namespace_lock);
 sysevent_t *ev = ((void*)0);

 ASSERT(spa_writeable(spa));

 if (!locked)
  txg = spa_vdev_enter(spa);

 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 if (spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
  error = (spa_has_checkpoint(spa)) ?
      ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;

  if (!locked)
   return (spa_vdev_exit(spa, ((void*)0), txg, error));

  return (error);
 }

 vd = spa_lookup_by_guid(spa, guid, B_FALSE);

 if (spa->spa_spares.sav_vdevs != ((void*)0) &&
     nvlist_lookup_nvlist_array(spa->spa_spares.sav_config,
     ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0 &&
     (nv = spa_nvlist_lookup_by_guid(spares, nspares, guid)) != ((void*)0)) {




  if (vd == ((void*)0) || unspare) {
   char *nvstr = fnvlist_lookup_string(nv,
       ZPOOL_CONFIG_PATH);
   spa_history_log_internal(spa, "vdev remove", ((void*)0),
       "%s vdev (%s) %s", spa_name(spa),
       VDEV_TYPE_SPARE, nvstr);
   if (vd == ((void*)0))
    vd = spa_lookup_by_guid(spa, guid, B_TRUE);
   ev = spa_event_create(spa, vd, ((void*)0),
       ESC_ZFS_VDEV_REMOVE_AUX);
   spa_vdev_remove_aux(spa->spa_spares.sav_config,
       ZPOOL_CONFIG_SPARES, spares, nspares, nv);
   spa_load_spares(spa);
   spa->spa_spares.sav_sync = B_TRUE;
  } else {
   error = SET_ERROR(EBUSY);
  }
 } else if (spa->spa_l2cache.sav_vdevs != ((void*)0) &&
     nvlist_lookup_nvlist_array(spa->spa_l2cache.sav_config,
     ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0 &&
     (nv = spa_nvlist_lookup_by_guid(l2cache, nl2cache, guid)) != ((void*)0)) {
  char *nvstr = fnvlist_lookup_string(nv, ZPOOL_CONFIG_PATH);
  spa_history_log_internal(spa, "vdev remove", ((void*)0),
      "%s vdev (%s) %s", spa_name(spa), VDEV_TYPE_L2CACHE, nvstr);



  vd = spa_lookup_by_guid(spa, guid, B_TRUE);
  ev = spa_event_create(spa, vd, ((void*)0), ESC_ZFS_VDEV_REMOVE_AUX);
  spa_vdev_remove_aux(spa->spa_l2cache.sav_config,
      ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache, nv);
  spa_load_l2cache(spa);
  spa->spa_l2cache.sav_sync = B_TRUE;
 } else if (vd != ((void*)0) && vd->vdev_islog) {
  ASSERT(!locked);
  error = spa_vdev_remove_log(vd, &txg);
 } else if (vd != ((void*)0)) {
  ASSERT(!locked);
  error = spa_vdev_remove_top(vd, &txg);
 } else {



  error = SET_ERROR(ENOENT);
 }

 if (!locked)
  error = spa_vdev_exit(spa, ((void*)0), txg, error);

 if (ev != ((void*)0)) {
  if (error != 0) {
   spa_event_discard(ev);
  } else {
   spa_event_post(ev);
  }
 }

 return (error);
}
