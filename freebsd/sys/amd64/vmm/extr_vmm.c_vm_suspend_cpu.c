
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int debug_cpus; int active_cpus; } ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET_ATOMIC (int,int *) ;
 int EINVAL ;
 int vcpu_notify_event (struct vm*,int,int) ;

int
vm_suspend_cpu(struct vm *vm, int vcpuid)
{
 int i;

 if (vcpuid < -1 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 if (vcpuid == -1) {
  vm->debug_cpus = vm->active_cpus;
  for (i = 0; i < vm->maxcpus; i++) {
   if (CPU_ISSET(i, &vm->active_cpus))
    vcpu_notify_event(vm, i, 0);
  }
 } else {
  if (!CPU_ISSET(vcpuid, &vm->active_cpus))
   return (EINVAL);

  CPU_SET_ATOMIC(vcpuid, &vm->debug_cpus);
  vcpu_notify_event(vm, vcpuid, 0);
 }
 return (0);
}
