
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int KASSERT (int,char*) ;
 int PAGE_MASK ;

__attribute__((used)) static void
pmap_invalidate_cache_range_check_align(vm_offset_t sva, vm_offset_t eva)
{

 KASSERT((sva & PAGE_MASK) == 0,
     ("pmap_invalidate_cache_range: sva not page-aligned"));
 KASSERT((eva & PAGE_MASK) == 0,
     ("pmap_invalidate_cache_range: eva not page-aligned"));
}
