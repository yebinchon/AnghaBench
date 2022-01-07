
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct pptseg {scalar_t__ len; int gpa; } ;
struct pptdev {struct pptseg* mmio; } ;


 int MAX_MMIOSEGS ;
 int bzero (struct pptseg*,int) ;
 int vm_unmap_mmio (struct vm*,int ,scalar_t__) ;

__attribute__((used)) static void
ppt_unmap_mmio(struct vm *vm, struct pptdev *ppt)
{
 int i;
 struct pptseg *seg;

 for (i = 0; i < MAX_MMIOSEGS; i++) {
  seg = &ppt->mmio[i];
  if (seg->len == 0)
   continue;
  (void)vm_unmap_mmio(vm, seg->gpa, seg->len);
  bzero(seg, sizeof(struct pptseg));
 }
}
