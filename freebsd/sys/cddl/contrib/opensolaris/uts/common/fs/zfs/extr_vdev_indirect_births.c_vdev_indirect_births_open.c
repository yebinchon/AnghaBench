
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int vib_entries; int vib_object; int * vib_objset; TYPE_1__* vib_phys; TYPE_8__* vib_dbuf; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {TYPE_1__* db_data; } ;
struct TYPE_9__ {scalar_t__ vib_count; } ;


 int ASSERT (int ) ;
 int DMU_READ_PREFETCH ;
 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int dmu_bonus_hold (int *,int ,TYPE_2__*,TYPE_8__**) ;
 int dmu_read (int *,int ,int ,int ,int ,int ) ;
 int kmem_alloc (int ,int ) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int vdev_indirect_births_size_impl (TYPE_2__*) ;
 int vdev_indirect_births_verify (TYPE_2__*) ;

vdev_indirect_births_t *
vdev_indirect_births_open(objset_t *os, uint64_t births_object)
{
 vdev_indirect_births_t *vib = kmem_zalloc(sizeof (*vib), KM_SLEEP);

 vib->vib_objset = os;
 vib->vib_object = births_object;

 VERIFY0(dmu_bonus_hold(os, vib->vib_object, vib, &vib->vib_dbuf));
 vib->vib_phys = vib->vib_dbuf->db_data;

 if (vib->vib_phys->vib_count > 0) {
  uint64_t births_size = vdev_indirect_births_size_impl(vib);
  vib->vib_entries = kmem_alloc(births_size, KM_SLEEP);
  VERIFY0(dmu_read(vib->vib_objset, vib->vib_object, 0,
      births_size, vib->vib_entries, DMU_READ_PREFETCH));
 }

 ASSERT(vdev_indirect_births_verify(vib));

 return (vib);
}
