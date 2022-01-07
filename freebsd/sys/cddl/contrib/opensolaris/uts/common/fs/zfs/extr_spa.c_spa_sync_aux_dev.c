
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_8__ {scalar_t__ sav_object; int sav_count; scalar_t__ sav_sync; int * sav_vdevs; } ;
typedef TYPE_2__ spa_aux_vdev_t ;
typedef int nvlist_t ;
typedef int dmu_tx_t ;


 scalar_t__ B_FALSE ;
 int DMU_OT_PACKED_NVLIST ;
 int DMU_OT_PACKED_NVLIST_SIZE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VDEV_CONFIG_L2CACHE ;
 int VERIFY (int) ;
 scalar_t__ dmu_object_alloc (int ,int ,int,int ,int,int *) ;
 int ** kmem_alloc (int,int ) ;
 int kmem_free (int **,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,char const*,int **,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int spa_sync_nvlist (TYPE_1__*,scalar_t__,int *,int *) ;
 int * vdev_config_generate (TYPE_1__*,int ,scalar_t__,int ) ;
 scalar_t__ zap_update (int ,int ,char const*,int,int,scalar_t__*,int *) ;

__attribute__((used)) static void
spa_sync_aux_dev(spa_t *spa, spa_aux_vdev_t *sav, dmu_tx_t *tx,
    const char *config, const char *entry)
{
 nvlist_t *nvroot;
 nvlist_t **list;
 int i;

 if (!sav->sav_sync)
  return;






 if (sav->sav_object == 0) {
  sav->sav_object = dmu_object_alloc(spa->spa_meta_objset,
      DMU_OT_PACKED_NVLIST, 1 << 14, DMU_OT_PACKED_NVLIST_SIZE,
      sizeof (uint64_t), tx);
  VERIFY(zap_update(spa->spa_meta_objset,
      DMU_POOL_DIRECTORY_OBJECT, entry, sizeof (uint64_t), 1,
      &sav->sav_object, tx) == 0);
 }

 VERIFY(nvlist_alloc(&nvroot, NV_UNIQUE_NAME, KM_SLEEP) == 0);
 if (sav->sav_count == 0) {
  VERIFY(nvlist_add_nvlist_array(nvroot, config, ((void*)0), 0) == 0);
 } else {
  list = kmem_alloc(sav->sav_count * sizeof (void *), KM_SLEEP);
  for (i = 0; i < sav->sav_count; i++)
   list[i] = vdev_config_generate(spa, sav->sav_vdevs[i],
       B_FALSE, VDEV_CONFIG_L2CACHE);
  VERIFY(nvlist_add_nvlist_array(nvroot, config, list,
      sav->sav_count) == 0);
  for (i = 0; i < sav->sav_count; i++)
   nvlist_free(list[i]);
  kmem_free(list, sav->sav_count * sizeof (void *));
 }

 spa_sync_nvlist(spa, sav->sav_object, nvroot, tx);
 nvlist_free(nvroot);

 sav->sav_sync = B_FALSE;
}
