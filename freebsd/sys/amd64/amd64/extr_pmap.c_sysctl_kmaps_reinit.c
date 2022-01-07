
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pmap_kernel_map_range {int attrs; int sva; } ;
typedef int pt_entry_t ;


 int memset (struct pmap_kernel_map_range*,int ,int) ;

__attribute__((used)) static void
sysctl_kmaps_reinit(struct pmap_kernel_map_range *range, vm_offset_t va,
    pt_entry_t attrs)
{

 memset(range, 0, sizeof(*range));
 range->sva = va;
 range->attrs = attrs;
}
