
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct vmctx {int fd; } ;
struct vm_pptdev_msi {int vcpu; int bus; int slot; int func; int numvec; void* addr; void* msg; } ;
typedef int pptmsi ;


 int VM_PPTDEV_MSI ;
 int bzero (struct vm_pptdev_msi*,int) ;
 int ioctl (int ,int ,struct vm_pptdev_msi*) ;

int
vm_setup_pptdev_msi(struct vmctx *ctx, int vcpu, int bus, int slot, int func,
    uint64_t addr, uint64_t msg, int numvec)
{
 struct vm_pptdev_msi pptmsi;

 bzero(&pptmsi, sizeof(pptmsi));
 pptmsi.vcpu = vcpu;
 pptmsi.bus = bus;
 pptmsi.slot = slot;
 pptmsi.func = func;
 pptmsi.msg = msg;
 pptmsi.addr = addr;
 pptmsi.numvec = numvec;

 return (ioctl(ctx->fd, VM_PPTDEV_MSI, &pptmsi));
}
