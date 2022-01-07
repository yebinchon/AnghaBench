
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmmsi ;
typedef void* uint64_t ;
struct vmctx {int fd; } ;
struct vm_lapic_msi {void* msg; void* addr; } ;


 int VM_LAPIC_MSI ;
 int bzero (struct vm_lapic_msi*,int) ;
 int ioctl (int ,int ,struct vm_lapic_msi*) ;

int
vm_lapic_msi(struct vmctx *ctx, uint64_t addr, uint64_t msg)
{
 struct vm_lapic_msi vmmsi;

 bzero(&vmmsi, sizeof(vmmsi));
 vmmsi.addr = addr;
 vmmsi.msg = msg;

 return (ioctl(ctx->fd, VM_LAPIC_MSI, &vmmsi));
}
