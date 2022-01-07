
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int sav_count; int * sav_config; TYPE_4__** sav_vdevs; } ;
struct TYPE_20__ {int sav_count; int * sav_config; TYPE_4__** sav_vdevs; } ;
struct TYPE_22__ {int * spa_comment; void* spa_indirect_vdevs_loaded; scalar_t__ spa_async_suspended; TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; int * spa_meta_objset; int * spa_dsl_pool; TYPE_4__* spa_root_vdev; int spa_deferred_bpobj; int * spa_checkpoint_discard_zthr; int * spa_condense_zthr; int * spa_vdev_removal; TYPE_4__** spa_async_zio_root; void* spa_sync_on; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_23__ {int vdev_children; int * vdev_child; } ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_INITIALIZE_ACTIVE ;
 int bpobj_close (int *) ;
 int ddt_unload (TYPE_3__*) ;
 int dsl_pool_close (int *) ;
 int kmem_free (TYPE_4__**,int) ;
 int max_ncpus ;
 int nvlist_free (int *) ;
 int spa_async_suspend (TYPE_3__*) ;
 int spa_condense_fini (TYPE_3__*) ;
 int spa_config_enter (TYPE_3__*,int ,TYPE_3__*,int ) ;
 int spa_config_exit (TYPE_3__*,int ,TYPE_3__*) ;
 int spa_l2cache_drop (TYPE_3__*) ;
 int spa_load_note (TYPE_3__*,char*) ;
 int spa_namespace_lock ;
 int spa_strfree (int *) ;
 int spa_vdev_removal_destroy (int *) ;
 int trim_thread_destroy (TYPE_3__*) ;
 int txg_sync_stop (int *) ;
 int vdev_clear_stats (TYPE_4__*) ;
 int vdev_free (TYPE_4__*) ;
 int vdev_initialize_stop_all (TYPE_4__*,int ) ;
 int vdev_metaslab_fini (int ) ;
 int zio_wait (TYPE_4__*) ;
 int zthr_destroy (int *) ;

__attribute__((used)) static void
spa_unload(spa_t *spa)
{
 int i;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 spa_load_note(spa, "UNLOADING");




 trim_thread_destroy(spa);




 spa_async_suspend(spa);

 if (spa->spa_root_vdev) {
  vdev_initialize_stop_all(spa->spa_root_vdev,
      VDEV_INITIALIZE_ACTIVE);
 }




 if (spa->spa_sync_on) {
  txg_sync_stop(spa->spa_dsl_pool);
  spa->spa_sync_on = B_FALSE;
 }







 if (spa->spa_root_vdev != ((void*)0)) {
  spa_config_enter(spa, SCL_ALL, spa, RW_WRITER);
  for (int c = 0; c < spa->spa_root_vdev->vdev_children; c++)
   vdev_metaslab_fini(spa->spa_root_vdev->vdev_child[c]);
  spa_config_exit(spa, SCL_ALL, spa);
 }




 if (spa->spa_async_zio_root != ((void*)0)) {
  for (int i = 0; i < max_ncpus; i++)
   (void) zio_wait(spa->spa_async_zio_root[i]);
  kmem_free(spa->spa_async_zio_root, max_ncpus * sizeof (void *));
  spa->spa_async_zio_root = ((void*)0);
 }

 if (spa->spa_vdev_removal != ((void*)0)) {
  spa_vdev_removal_destroy(spa->spa_vdev_removal);
  spa->spa_vdev_removal = ((void*)0);
 }

 if (spa->spa_condense_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_condense_zthr);
  spa->spa_condense_zthr = ((void*)0);
 }

 if (spa->spa_checkpoint_discard_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_checkpoint_discard_zthr);
  spa->spa_checkpoint_discard_zthr = ((void*)0);
 }

 spa_condense_fini(spa);

 bpobj_close(&spa->spa_deferred_bpobj);

 spa_config_enter(spa, SCL_ALL, spa, RW_WRITER);




 if (spa->spa_root_vdev)
  vdev_free(spa->spa_root_vdev);
 ASSERT(spa->spa_root_vdev == ((void*)0));




 if (spa->spa_dsl_pool) {
  dsl_pool_close(spa->spa_dsl_pool);
  spa->spa_dsl_pool = ((void*)0);
  spa->spa_meta_objset = ((void*)0);
 }

 ddt_unload(spa);




 spa_l2cache_drop(spa);

 for (i = 0; i < spa->spa_spares.sav_count; i++)
  vdev_free(spa->spa_spares.sav_vdevs[i]);
 if (spa->spa_spares.sav_vdevs) {
  kmem_free(spa->spa_spares.sav_vdevs,
      spa->spa_spares.sav_count * sizeof (void *));
  spa->spa_spares.sav_vdevs = ((void*)0);
 }
 if (spa->spa_spares.sav_config) {
  nvlist_free(spa->spa_spares.sav_config);
  spa->spa_spares.sav_config = ((void*)0);
 }
 spa->spa_spares.sav_count = 0;

 for (i = 0; i < spa->spa_l2cache.sav_count; i++) {
  vdev_clear_stats(spa->spa_l2cache.sav_vdevs[i]);
  vdev_free(spa->spa_l2cache.sav_vdevs[i]);
 }
 if (spa->spa_l2cache.sav_vdevs) {
  kmem_free(spa->spa_l2cache.sav_vdevs,
      spa->spa_l2cache.sav_count * sizeof (void *));
  spa->spa_l2cache.sav_vdevs = ((void*)0);
 }
 if (spa->spa_l2cache.sav_config) {
  nvlist_free(spa->spa_l2cache.sav_config);
  spa->spa_l2cache.sav_config = ((void*)0);
 }
 spa->spa_l2cache.sav_count = 0;

 spa->spa_async_suspended = 0;

 spa->spa_indirect_vdevs_loaded = B_FALSE;

 if (spa->spa_comment != ((void*)0)) {
  spa_strfree(spa->spa_comment);
  spa->spa_comment = ((void*)0);
 }

 spa_config_exit(spa, SCL_ALL, spa);
}
