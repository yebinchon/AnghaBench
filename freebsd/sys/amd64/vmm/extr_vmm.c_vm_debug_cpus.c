
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int debug_cpus; } ;
typedef int cpuset_t ;



cpuset_t
vm_debug_cpus(struct vm *vm)
{

 return (vm->debug_cpus);
}
