
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t vdev_ms_count; int ** vdev_ms; int vdev_mg; int * vdev_checkpoint_sm; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int metaslab_t ;


 int ASSERT (int ) ;
 int ASSERT0 (size_t) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int kmem_free (int **,size_t) ;
 int metaslab_fini (int *) ;
 int metaslab_group_passivate (int ) ;
 int spa_feature_is_active (int ,int ) ;
 int space_map_close (int *) ;

void
vdev_metaslab_fini(vdev_t *vd)
{
 if (vd->vdev_checkpoint_sm != ((void*)0)) {
  ASSERT(spa_feature_is_active(vd->vdev_spa,
      SPA_FEATURE_POOL_CHECKPOINT));
  space_map_close(vd->vdev_checkpoint_sm);
  vd->vdev_checkpoint_sm = ((void*)0);
 }

 if (vd->vdev_ms != ((void*)0)) {
  uint64_t count = vd->vdev_ms_count;

  metaslab_group_passivate(vd->vdev_mg);
  for (uint64_t m = 0; m < count; m++) {
   metaslab_t *msp = vd->vdev_ms[m];

   if (msp != ((void*)0))
    metaslab_fini(msp);
  }
  kmem_free(vd->vdev_ms, count * sizeof (metaslab_t *));
  vd->vdev_ms = ((void*)0);

  vd->vdev_ms_count = 0;
 }
 ASSERT0(vd->vdev_ms_count);
}
