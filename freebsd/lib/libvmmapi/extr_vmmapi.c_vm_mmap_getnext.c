
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
struct vmctx {int fd; } ;
struct vm_memmap {int segid; size_t len; int prot; int flags; int segoff; int gpa; } ;


 int VM_MMAP_GETNEXT ;
 int bzero (struct vm_memmap*,int) ;
 int ioctl (int ,int ,struct vm_memmap*) ;

int
vm_mmap_getnext(struct vmctx *ctx, vm_paddr_t *gpa, int *segid,
    vm_ooffset_t *segoff, size_t *len, int *prot, int *flags)
{
 struct vm_memmap memmap;
 int error;

 bzero(&memmap, sizeof(struct vm_memmap));
 memmap.gpa = *gpa;
 error = ioctl(ctx->fd, VM_MMAP_GETNEXT, &memmap);
 if (error == 0) {
  *gpa = memmap.gpa;
  *segid = memmap.segid;
  *segoff = memmap.segoff;
  *len = memmap.len;
  *prot = memmap.prot;
  *flags = memmap.flags;
 }
 return (error);
}
