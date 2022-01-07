
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_exit {int exitcode; scalar_t__ inst_length; int rip; } ;
struct vm {int dummy; } ;


 int VM_EXITCODE_DEBUG ;
 struct vm_exit* vm_exitinfo (struct vm*,int) ;

void
vm_exit_debug(struct vm *vm, int vcpuid, uint64_t rip)
{
 struct vm_exit *vmexit;

 vmexit = vm_exitinfo(vm, vcpuid);
 vmexit->rip = rip;
 vmexit->inst_length = 0;
 vmexit->exitcode = VM_EXITCODE_DEBUG;
}
