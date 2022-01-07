
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int * vm_object_t ;
struct vm {int vmspace; } ;


 int ENOMEM ;
 int * vmm_mmio_alloc (int ,int ,size_t,int ) ;

int
vm_map_mmio(struct vm *vm, vm_paddr_t gpa, size_t len, vm_paddr_t hpa)
{
 vm_object_t obj;

 if ((obj = vmm_mmio_alloc(vm->vmspace, gpa, len, hpa)) == ((void*)0))
  return (ENOMEM);
 else
  return (0);
}
