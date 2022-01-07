
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;
typedef scalar_t__ loff_t ;


 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int linux_invalidate_mapping_pages_sub (int ,int ,int ,int ) ;

void
linux_shmem_truncate_range(vm_object_t obj, loff_t lstart, loff_t lend)
{
 vm_pindex_t start = OFF_TO_IDX(lstart + PAGE_SIZE - 1);
 vm_pindex_t end = OFF_TO_IDX(lend + 1);

 (void) linux_invalidate_mapping_pages_sub(obj, start, end, 0);
}
