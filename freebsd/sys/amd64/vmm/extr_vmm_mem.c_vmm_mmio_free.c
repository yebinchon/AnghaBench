
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct vmspace {int vm_map; } ;


 int vm_map_remove (int *,scalar_t__,scalar_t__) ;

void
vmm_mmio_free(struct vmspace *vmspace, vm_paddr_t gpa, size_t len)
{

 vm_map_remove(&vmspace->vm_map, gpa, gpa + len);
}
