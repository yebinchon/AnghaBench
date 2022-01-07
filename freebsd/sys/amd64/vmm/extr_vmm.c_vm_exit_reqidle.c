
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_exit {int exitcode; scalar_t__ inst_length; int rip; } ;
struct vm {int dummy; } ;


 int VMEXIT_REQIDLE ;
 int VM_EXITCODE_REQIDLE ;
 struct vm_exit* vm_exitinfo (struct vm*,int) ;
 int vmm_stat_incr (struct vm*,int,int ,int) ;

void
vm_exit_reqidle(struct vm *vm, int vcpuid, uint64_t rip)
{
 struct vm_exit *vmexit;

 vmexit = vm_exitinfo(vm, vcpuid);
 vmexit->rip = rip;
 vmexit->inst_length = 0;
 vmexit->exitcode = VM_EXITCODE_REQIDLE;
 vmm_stat_incr(vm, vcpuid, VMEXIT_REQIDLE, 1);
}
