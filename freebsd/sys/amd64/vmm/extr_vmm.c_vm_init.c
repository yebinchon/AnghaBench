
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int suspended_cpus; scalar_t__ suspend; int debug_cpus; int active_cpus; int vrtc; int vpmtmr; int vatpit; int vatpic; int vhpet; int vioapic; int * iommu; int vmspace; int cookie; } ;


 int CPU_ZERO (int *) ;
 int VMINIT (struct vm*,int ) ;
 int vatpic_init (struct vm*) ;
 int vatpit_init (struct vm*) ;
 int vcpu_init (struct vm*,int,int) ;
 int vhpet_init (struct vm*) ;
 int vioapic_init (struct vm*) ;
 int vmspace_pmap (int ) ;
 int vpmtmr_init (struct vm*) ;
 int vrtc_init (struct vm*) ;

__attribute__((used)) static void
vm_init(struct vm *vm, bool create)
{
 int i;

 vm->cookie = VMINIT(vm, vmspace_pmap(vm->vmspace));
 vm->iommu = ((void*)0);
 vm->vioapic = vioapic_init(vm);
 vm->vhpet = vhpet_init(vm);
 vm->vatpic = vatpic_init(vm);
 vm->vatpit = vatpit_init(vm);
 vm->vpmtmr = vpmtmr_init(vm);
 if (create)
  vm->vrtc = vrtc_init(vm);

 CPU_ZERO(&vm->active_cpus);
 CPU_ZERO(&vm->debug_cpus);

 vm->suspend = 0;
 CPU_ZERO(&vm->suspended_cpus);

 for (i = 0; i < vm->maxcpus; i++)
  vcpu_init(vm, i, create);
}
