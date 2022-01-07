
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vm {int dummy; } ;
struct pptseg {size_t len; int gpa; } ;
struct pptdev {struct pptseg* mmio; struct vm* vm; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOSPC ;
 int MAX_MMIOSEGS ;
 struct pptdev* ppt_find (int,int,int) ;
 int vm_map_mmio (struct vm*,int ,size_t,int ) ;

int
ppt_map_mmio(struct vm *vm, int bus, int slot, int func,
      vm_paddr_t gpa, size_t len, vm_paddr_t hpa)
{
 int i, error;
 struct pptseg *seg;
 struct pptdev *ppt;

 ppt = ppt_find(bus, slot, func);
 if (ppt != ((void*)0)) {
  if (ppt->vm != vm)
   return (EBUSY);

  for (i = 0; i < MAX_MMIOSEGS; i++) {
   seg = &ppt->mmio[i];
   if (seg->len == 0) {
    error = vm_map_mmio(vm, gpa, len, hpa);
    if (error == 0) {
     seg->gpa = gpa;
     seg->len = len;
    }
    return (error);
   }
  }
  return (ENOSPC);
 }
 return (ENOENT);
}
