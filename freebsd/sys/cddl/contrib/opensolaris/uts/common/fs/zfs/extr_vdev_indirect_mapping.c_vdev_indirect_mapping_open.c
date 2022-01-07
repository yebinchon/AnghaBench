
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int vim_havecounts; int vim_entries; int vim_object; TYPE_1__* vim_phys; TYPE_10__* vim_dbuf; int * vim_objset; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_14__ {scalar_t__ doi_bonus_size; } ;
typedef TYPE_3__ dmu_object_info_t ;
struct TYPE_12__ {scalar_t__ vimp_num_entries; } ;
struct TYPE_11__ {TYPE_1__* db_data; } ;


 int ASSERT (int ) ;
 int DMU_READ_PREFETCH ;
 int KM_SLEEP ;
 scalar_t__ VDEV_INDIRECT_MAPPING_SIZE_V0 ;
 int VERIFY0 (int ) ;
 int dmu_bonus_hold (int *,int ,TYPE_2__*,TYPE_10__**) ;
 int dmu_object_info (int *,int ,TYPE_3__*) ;
 int dmu_read (int *,int ,int ,int ,int ,int ) ;
 int kmem_alloc (int ,int ) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int vdev_indirect_mapping_size (TYPE_2__*) ;
 int vdev_indirect_mapping_verify (TYPE_2__*) ;

vdev_indirect_mapping_t *
vdev_indirect_mapping_open(objset_t *os, uint64_t mapping_object)
{
 vdev_indirect_mapping_t *vim = kmem_zalloc(sizeof (*vim), KM_SLEEP);
 dmu_object_info_t doi;
 VERIFY0(dmu_object_info(os, mapping_object, &doi));

 vim->vim_objset = os;
 vim->vim_object = mapping_object;

 VERIFY0(dmu_bonus_hold(os, vim->vim_object, vim,
     &vim->vim_dbuf));
 vim->vim_phys = vim->vim_dbuf->db_data;

 vim->vim_havecounts =
     (doi.doi_bonus_size > VDEV_INDIRECT_MAPPING_SIZE_V0);

 if (vim->vim_phys->vimp_num_entries > 0) {
  uint64_t map_size = vdev_indirect_mapping_size(vim);
  vim->vim_entries = kmem_alloc(map_size, KM_SLEEP);
  VERIFY0(dmu_read(os, vim->vim_object, 0, map_size,
      vim->vim_entries, DMU_READ_PREFETCH));
 }

 ASSERT(vdev_indirect_mapping_verify(vim));

 return (vim);
}
