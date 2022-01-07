
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x2apic ;
struct vmctx {int fd; } ;
struct vm_x2apic {int cpuid; int state; } ;
typedef enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;


 int VM_GET_X2APIC_STATE ;
 int bzero (struct vm_x2apic*,int) ;
 int ioctl (int ,int ,struct vm_x2apic*) ;

int
vm_get_x2apic_state(struct vmctx *ctx, int vcpu, enum x2apic_state *state)
{
 int error;
 struct vm_x2apic x2apic;

 bzero(&x2apic, sizeof(x2apic));
 x2apic.cpuid = vcpu;

 error = ioctl(ctx->fd, VM_GET_X2APIC_STATE, &x2apic);
 *state = x2apic.state;
 return (error);
}
