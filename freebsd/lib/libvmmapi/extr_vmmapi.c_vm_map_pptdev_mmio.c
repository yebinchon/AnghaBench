
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_paddr_t ;
struct vmctx {int fd; } ;
struct vm_pptdev_mmio {int bus; int slot; int func; size_t len; void* hpa; void* gpa; } ;
typedef int pptmmio ;


 int VM_MAP_PPTDEV_MMIO ;
 int bzero (struct vm_pptdev_mmio*,int) ;
 int ioctl (int ,int ,struct vm_pptdev_mmio*) ;

int
vm_map_pptdev_mmio(struct vmctx *ctx, int bus, int slot, int func,
     vm_paddr_t gpa, size_t len, vm_paddr_t hpa)
{
 struct vm_pptdev_mmio pptmmio;

 bzero(&pptmmio, sizeof(pptmmio));
 pptmmio.bus = bus;
 pptmmio.slot = slot;
 pptmmio.func = func;
 pptmmio.gpa = gpa;
 pptmmio.len = len;
 pptmmio.hpa = hpa;

 return (ioctl(ctx->fd, VM_MAP_PPTDEV_MMIO, &pptmmio));
}
