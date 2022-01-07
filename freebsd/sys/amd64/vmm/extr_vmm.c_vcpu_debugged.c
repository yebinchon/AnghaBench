
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int debug_cpus; } ;


 int CPU_ISSET (int,int *) ;

int
vcpu_debugged(struct vm *vm, int vcpuid)
{

 return (CPU_ISSET(vcpuid, &vm->debug_cpus));
}
