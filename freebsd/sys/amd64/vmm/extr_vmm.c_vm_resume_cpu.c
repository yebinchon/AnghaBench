
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int debug_cpus; } ;


 int CPU_CLR_ATOMIC (int,int *) ;
 int CPU_ISSET (int,int *) ;
 int CPU_ZERO (int *) ;
 int EINVAL ;

int
vm_resume_cpu(struct vm *vm, int vcpuid)
{

 if (vcpuid < -1 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 if (vcpuid == -1) {
  CPU_ZERO(&vm->debug_cpus);
 } else {
  if (!CPU_ISSET(vcpuid, &vm->debug_cpus))
   return (EINVAL);

  CPU_CLR_ATOMIC(vcpuid, &vm->debug_cpus);
 }
 return (0);
}
