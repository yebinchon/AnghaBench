
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmnmi ;
struct vmctx {int fd; } ;
struct vm_nmi {int cpuid; } ;


 int VM_INJECT_NMI ;
 int bzero (struct vm_nmi*,int) ;
 int ioctl (int ,int ,struct vm_nmi*) ;

int
vm_inject_nmi(struct vmctx *ctx, int vcpu)
{
 struct vm_nmi vmnmi;

 bzero(&vmnmi, sizeof(vmnmi));
 vmnmi.cpuid = vcpu;

 return (ioctl(ctx->fd, VM_INJECT_NMI, &vmnmi));
}
