
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vmctx {size_t lowmem_limit; size_t lowmem; size_t highmem; char* baseaddr; } ;
typedef enum vm_mmap_style { ____Placeholder_vm_mmap_style } vm_mmap_style ;


 int GB ;
 int MAP_ALIGNED_SUPER ;
 char* MAP_FAILED ;
 int MAP_GUARD ;
 int PROT_NONE ;
 int VM_MMAP_ALL ;
 size_t VM_MMAP_GUARD_SIZE ;
 int VM_SYSMEM ;
 int assert (int) ;
 char* mmap (int *,size_t,int ,int,int,int ) ;
 int setup_memory_segment (struct vmctx*,int,size_t,char*) ;
 int vm_alloc_memseg (struct vmctx*,int ,size_t,int *) ;

int
vm_setup_memory(struct vmctx *ctx, size_t memsize, enum vm_mmap_style vms)
{
 size_t objsize, len;
 vm_paddr_t gpa;
 char *baseaddr, *ptr;
 int error;

 assert(vms == VM_MMAP_ALL);





 if (memsize > ctx->lowmem_limit) {
  ctx->lowmem = ctx->lowmem_limit;
  ctx->highmem = memsize - ctx->lowmem_limit;
  objsize = 4*GB + ctx->highmem;
 } else {
  ctx->lowmem = memsize;
  ctx->highmem = 0;
  objsize = ctx->lowmem;
 }

 error = vm_alloc_memseg(ctx, VM_SYSMEM, objsize, ((void*)0));
 if (error)
  return (error);





 len = VM_MMAP_GUARD_SIZE + objsize + VM_MMAP_GUARD_SIZE;
 ptr = mmap(((void*)0), len, PROT_NONE, MAP_GUARD | MAP_ALIGNED_SUPER, -1, 0);
 if (ptr == MAP_FAILED)
  return (-1);

 baseaddr = ptr + VM_MMAP_GUARD_SIZE;
 if (ctx->highmem > 0) {
  gpa = 4*GB;
  len = ctx->highmem;
  error = setup_memory_segment(ctx, gpa, len, baseaddr);
  if (error)
   return (error);
 }

 if (ctx->lowmem > 0) {
  gpa = 0;
  len = ctx->lowmem;
  error = setup_memory_segment(ctx, gpa, len, baseaddr);
  if (error)
   return (error);
 }

 ctx->baseaddr = baseaddr;

 return (0);
}
