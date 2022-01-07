
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vimep_dst; } ;
typedef TYPE_1__ vdev_indirect_mapping_entry_phys_t ;
typedef scalar_t__ const uint64_t ;


 scalar_t__ const DVA_GET_ASIZE (int *) ;
 scalar_t__ DVA_MAPPING_GET_SRC_OFFSET (TYPE_1__ const*) ;

__attribute__((used)) static int
dva_mapping_overlap_compare(const void *v_key, const void *v_array_elem)
{
 const uint64_t *key = v_key;
 const vdev_indirect_mapping_entry_phys_t *array_elem =
     v_array_elem;
 uint64_t src_offset = DVA_MAPPING_GET_SRC_OFFSET(array_elem);

 if (*key < src_offset) {
  return (-1);
 } else if (*key < src_offset + DVA_GET_ASIZE(&array_elem->vimep_dst)) {
  return (0);
 } else {
  return (1);
 }
}
