
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmm_stat_type {int dummy; } ;
struct vm {int vmspace; } ;


 int PAGE_SIZE ;
 int VMM_MEM_RESIDENT ;
 int vmm_stat_set (struct vm*,int,int ,int) ;
 int vmspace_resident_count (int ) ;

__attribute__((used)) static void
vm_get_rescnt(struct vm *vm, int vcpu, struct vmm_stat_type *stat)
{

 if (vcpu == 0) {
  vmm_stat_set(vm, vcpu, VMM_MEM_RESIDENT,
             PAGE_SIZE * vmspace_resident_count(vm->vmspace));
 }
}
