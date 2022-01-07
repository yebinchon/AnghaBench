
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int fd; } ;
struct vm_exception {int cpuid; int vector; int error_code_valid; int restart_instruction; int error_code; } ;


 int VM_INJECT_EXCEPTION ;
 int ioctl (int ,int ,struct vm_exception*) ;

int
vm_inject_exception(struct vmctx *ctx, int vcpu, int vector, int errcode_valid,
    uint32_t errcode, int restart_instruction)
{
 struct vm_exception exc;

 exc.cpuid = vcpu;
 exc.vector = vector;
 exc.error_code = errcode;
 exc.error_code_valid = errcode_valid;
 exc.restart_instruction = restart_instruction;

 return (ioctl(ctx->fd, VM_INJECT_EXCEPTION, &exc));
}
