
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vmctx {int memflags; int fd; } ;


 char* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_NOCORE ;
 int MAP_SHARED ;
 int PROT_ALL ;
 int PROT_RW ;
 int VM_MEM_F_INCORE ;
 int VM_SYSMEM ;
 char* mmap (char*,size_t,int ,int,int ,int ) ;
 int vm_mmap_memseg (struct vmctx*,int ,int ,int ,size_t,int ) ;

__attribute__((used)) static int
setup_memory_segment(struct vmctx *ctx, vm_paddr_t gpa, size_t len, char *base)
{
 char *ptr;
 int error, flags;


 error = vm_mmap_memseg(ctx, gpa, VM_SYSMEM, gpa, len, PROT_ALL);
 if (error)
  return (error);

 flags = MAP_SHARED | MAP_FIXED;
 if ((ctx->memflags & VM_MEM_F_INCORE) == 0)
  flags |= MAP_NOCORE;


 ptr = mmap(base + gpa, len, PROT_RW, flags, ctx->fd, gpa);
 if (ptr == MAP_FAILED)
  return (-1);

 return (0);
}
