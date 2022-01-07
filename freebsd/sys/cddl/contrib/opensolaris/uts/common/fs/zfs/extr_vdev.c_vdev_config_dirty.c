
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int vdev_children; int vdev_config_dirty_node; struct TYPE_12__* vdev_top; struct TYPE_12__** vdev_child; TYPE_3__* vdev_aux; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint_t ;
struct TYPE_13__ {int spa_config_dirty_list; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_14__ {int sav_count; scalar_t__ sav_sync; int sav_config; TYPE_1__** sav_vdevs; } ;
typedef TYPE_3__ spa_aux_vdev_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int list_insert_head (int *,TYPE_1__*) ;
 int list_link_active (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int ,int ,int ***,int*) ;
 scalar_t__ spa_config_held (TYPE_2__*,int ,int ) ;
 int spa_get_dsl (TYPE_2__*) ;
 int spa_writeable (TYPE_2__*) ;
 int * vdev_config_generate (TYPE_2__*,TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ vdev_is_concrete (TYPE_1__*) ;

void
vdev_config_dirty(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 int c;

 ASSERT(spa_writeable(spa));





 if (vd->vdev_aux != ((void*)0)) {
  spa_aux_vdev_t *sav = vd->vdev_aux;
  nvlist_t **aux;
  uint_t naux;

  for (c = 0; c < sav->sav_count; c++) {
   if (sav->sav_vdevs[c] == vd)
    break;
  }

  if (c == sav->sav_count) {



   ASSERT(sav->sav_sync == B_TRUE);
   return;
  }

  sav->sav_sync = B_TRUE;

  if (nvlist_lookup_nvlist_array(sav->sav_config,
      ZPOOL_CONFIG_L2CACHE, &aux, &naux) != 0) {
   VERIFY(nvlist_lookup_nvlist_array(sav->sav_config,
       ZPOOL_CONFIG_SPARES, &aux, &naux) == 0);
  }

  ASSERT(c < naux);





  nvlist_free(aux[c]);
  aux[c] = vdev_config_generate(spa, vd, B_TRUE, 0);

  return;
 }







 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_WRITER) ||
     (dsl_pool_sync_context(spa_get_dsl(spa)) &&
     spa_config_held(spa, SCL_CONFIG, RW_READER)));

 if (vd == rvd) {
  for (c = 0; c < rvd->vdev_children; c++)
   vdev_config_dirty(rvd->vdev_child[c]);
 } else {
  ASSERT(vd == vd->vdev_top);

  if (!list_link_active(&vd->vdev_config_dirty_node) &&
      vdev_is_concrete(vd)) {
   list_insert_head(&spa->spa_config_dirty_list, vd);
  }
 }
}
