
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vim_phys; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int vdev_indirect_mapping_entry_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ vimp_num_entries; } ;


 int ASSERT (int) ;
 int dva_mapping_overlap_compare (scalar_t__*,int *) ;
 int * vdev_indirect_mapping_entry (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static vdev_indirect_mapping_entry_phys_t *
vdev_indirect_mapping_entry_for_offset(vdev_indirect_mapping_t *vim,
    uint64_t offset)
{
 ASSERT(vim->vim_phys->vimp_num_entries > 0);

 vdev_indirect_mapping_entry_phys_t *entry;

 uint64_t last = vim->vim_phys->vimp_num_entries - 1;
 uint64_t base = 0;





 uint64_t mid;
 int result;

 while (last >= base) {
  mid = base + ((last - base) >> 1);

  entry = vdev_indirect_mapping_entry(vim, mid);
  if (entry == ((void*)0))
   break;
  result = dva_mapping_overlap_compare(&offset, entry);

  if (result == 0) {
   break;
  } else if (result < 0) {
   last = mid - 1;
  } else {
   base = mid + 1;
  }
 }
 return (entry);
}
