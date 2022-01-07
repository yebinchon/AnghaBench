
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_cpuset {int which; int cpusetsize; int * cpus; } ;
typedef int cpuset_t ;


 int VM_GET_CPUS ;
 int bzero (struct vm_cpuset*,int) ;
 int ioctl (int ,int ,struct vm_cpuset*) ;

__attribute__((used)) static int
vm_get_cpus(struct vmctx *ctx, int which, cpuset_t *cpus)
{
 struct vm_cpuset vm_cpuset;
 int error;

 bzero(&vm_cpuset, sizeof(struct vm_cpuset));
 vm_cpuset.which = which;
 vm_cpuset.cpusetsize = sizeof(cpuset_t);
 vm_cpuset.cpus = cpus;

 error = ioctl(ctx->fd, VM_GET_CPUS, &vm_cpuset);
 return (error);
}
