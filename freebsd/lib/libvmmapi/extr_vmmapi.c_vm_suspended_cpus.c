
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
typedef int cpuset_t ;


 int VM_SUSPENDED_CPUS ;
 int vm_get_cpus (struct vmctx*,int ,int *) ;

int
vm_suspended_cpus(struct vmctx *ctx, cpuset_t *cpus)
{

 return (vm_get_cpus(ctx, VM_SUSPENDED_CPUS, cpus));
}
