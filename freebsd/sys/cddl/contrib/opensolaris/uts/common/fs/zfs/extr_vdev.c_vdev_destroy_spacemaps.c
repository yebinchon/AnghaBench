
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_asize; int vdev_ms_shift; int vdev_ms_array; TYPE_1__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int * spa_meta_objset; } ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int dmu_object_free (int *,int ,int *) ;
 int dmu_read (int *,int ,int ,size_t,int*,int ) ;
 int* kmem_alloc (size_t,int ) ;
 int kmem_free (int*,size_t) ;
 int space_map_free_obj (int *,int,int *) ;

void
vdev_destroy_spacemaps(vdev_t *vd, dmu_tx_t *tx)
{
 if (vd->vdev_ms_array == 0)
  return;

 objset_t *mos = vd->vdev_spa->spa_meta_objset;
 uint64_t array_count = vd->vdev_asize >> vd->vdev_ms_shift;
 size_t array_bytes = array_count * sizeof (uint64_t);
 uint64_t *smobj_array = kmem_alloc(array_bytes, KM_SLEEP);
 VERIFY0(dmu_read(mos, vd->vdev_ms_array, 0,
     array_bytes, smobj_array, 0));

 for (uint64_t i = 0; i < array_count; i++) {
  uint64_t smobj = smobj_array[i];
  if (smobj == 0)
   continue;

  space_map_free_obj(mos, smobj, tx);
 }

 kmem_free(smobj_array, array_bytes);
 VERIFY0(dmu_object_free(mos, vd->vdev_ms_array, tx));
 vd->vdev_ms_array = 0;
}
