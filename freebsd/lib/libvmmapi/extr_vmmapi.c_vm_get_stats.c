
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int fd; } ;
struct timeval {int dummy; } ;
struct vm_stats {int cpuid; int num_entries; int * statbuf; struct timeval tv; } ;


 int VM_STATS ;
 int ioctl (int ,int ,struct vm_stats*) ;

uint64_t *
vm_get_stats(struct vmctx *ctx, int vcpu, struct timeval *ret_tv,
      int *ret_entries)
{
 int error;

 static struct vm_stats vmstats;

 vmstats.cpuid = vcpu;

 error = ioctl(ctx->fd, VM_STATS, &vmstats);
 if (error == 0) {
  if (ret_entries)
   *ret_entries = vmstats.num_entries;
  if (ret_tv)
   *ret_tv = vmstats.tv;
  return (vmstats.statbuf);
 } else
  return (((void*)0));
}
