
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vm {int vmspace; } ;


 int vmm_mmio_free (int ,int ,size_t) ;

int
vm_unmap_mmio(struct vm *vm, vm_paddr_t gpa, size_t len)
{

 vmm_mmio_free(vm->vmspace, gpa, len);
 return (0);
}
