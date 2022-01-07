
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int * vmspace; struct mem_map* mem_maps; int cookie; int vioapic; int vatpic; int vhpet; int vatpit; int vpmtmr; int vrtc; int * iommu; } ;
struct mem_map {int dummy; } ;


 int VMCLEANUP (int ) ;
 int VMSPACE_FREE (int *) ;
 int VM_MAX_MEMMAPS ;
 int VM_MAX_MEMSEGS ;
 int iommu_destroy_domain (int *) ;
 int ppt_unassign_all (struct vm*) ;
 int sysmem_mapping (struct vm*,struct mem_map*) ;
 int vatpic_cleanup (int ) ;
 int vatpit_cleanup (int ) ;
 int vcpu_cleanup (struct vm*,int,int) ;
 int vhpet_cleanup (int ) ;
 int vioapic_cleanup (int ) ;
 int vm_free_memmap (struct vm*,int) ;
 int vm_free_memseg (struct vm*,int) ;
 int vpmtmr_cleanup (int ) ;
 int vrtc_cleanup (int ) ;
 int vrtc_reset (int ) ;

__attribute__((used)) static void
vm_cleanup(struct vm *vm, bool destroy)
{
 struct mem_map *mm;
 int i;

 ppt_unassign_all(vm);

 if (vm->iommu != ((void*)0))
  iommu_destroy_domain(vm->iommu);

 if (destroy)
  vrtc_cleanup(vm->vrtc);
 else
  vrtc_reset(vm->vrtc);
 vpmtmr_cleanup(vm->vpmtmr);
 vatpit_cleanup(vm->vatpit);
 vhpet_cleanup(vm->vhpet);
 vatpic_cleanup(vm->vatpic);
 vioapic_cleanup(vm->vioapic);

 for (i = 0; i < vm->maxcpus; i++)
  vcpu_cleanup(vm, i, destroy);

 VMCLEANUP(vm->cookie);
 for (i = 0; i < VM_MAX_MEMMAPS; i++) {
  mm = &vm->mem_maps[i];
  if (destroy || !sysmem_mapping(vm, mm))
   vm_free_memmap(vm, i);
 }

 if (destroy) {
  for (i = 0; i < VM_MAX_MEMSEGS; i++)
   vm_free_memseg(vm, i);

  VMSPACE_FREE(vm->vmspace);
  vm->vmspace = ((void*)0);
 }
}
