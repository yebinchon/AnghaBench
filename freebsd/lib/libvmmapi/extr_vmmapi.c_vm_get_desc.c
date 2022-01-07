
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmsegdesc ;
typedef int uint64_t ;
typedef int uint32_t ;
struct vmctx {int fd; } ;
struct TYPE_2__ {int access; int limit; int base; } ;
struct vm_seg_desc {int cpuid; int regnum; TYPE_1__ desc; } ;


 int VM_GET_SEGMENT_DESCRIPTOR ;
 int bzero (struct vm_seg_desc*,int) ;
 int ioctl (int ,int ,struct vm_seg_desc*) ;

int
vm_get_desc(struct vmctx *ctx, int vcpu, int reg,
     uint64_t *base, uint32_t *limit, uint32_t *access)
{
 int error;
 struct vm_seg_desc vmsegdesc;

 bzero(&vmsegdesc, sizeof(vmsegdesc));
 vmsegdesc.cpuid = vcpu;
 vmsegdesc.regnum = reg;

 error = ioctl(ctx->fd, VM_GET_SEGMENT_DESCRIPTOR, &vmsegdesc);
 if (error == 0) {
  *base = vmsegdesc.desc.base;
  *limit = vmsegdesc.desc.limit;
  *access = vmsegdesc.desc.access;
 }
 return (error);
}
