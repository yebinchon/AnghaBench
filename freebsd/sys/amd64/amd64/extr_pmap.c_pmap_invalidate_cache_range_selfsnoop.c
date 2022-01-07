
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int pmap_invalidate_cache_range_check_align (int ,int ) ;

__attribute__((used)) static void
pmap_invalidate_cache_range_selfsnoop(vm_offset_t sva, vm_offset_t eva)
{

 pmap_invalidate_cache_range_check_align(sva, eva);
}
