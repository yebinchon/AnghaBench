
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;


 int VM_RESTART_INSTRUCTION ;
 int ioctl (int ,int ,int*) ;

int
vm_restart_instruction(void *arg, int vcpu)
{
 struct vmctx *ctx = arg;

 return (ioctl(ctx->fd, VM_RESTART_INSTRUCTION, &vcpu));
}
