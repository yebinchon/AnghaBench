
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxctx {int guest_rax; int guest_rdx; int guest_rcx; int guest_rbx; } ;
struct vm {int dummy; } ;


 int x86_emulate_cpuid (struct vm*,int,int *,int *,int *,int *) ;

__attribute__((used)) static int
vmx_handle_cpuid(struct vm *vm, int vcpu, struct vmxctx *vmxctx)
{
 int handled, func;

 func = vmxctx->guest_rax;

 handled = x86_emulate_cpuid(vm, vcpu,
        (uint32_t*)(&vmxctx->guest_rax),
        (uint32_t*)(&vmxctx->guest_rbx),
        (uint32_t*)(&vmxctx->guest_rcx),
        (uint32_t*)(&vmxctx->guest_rdx));
 return (handled);
}
