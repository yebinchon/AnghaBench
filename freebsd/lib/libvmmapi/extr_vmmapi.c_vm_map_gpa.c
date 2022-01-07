
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_paddr_t ;
struct vmctx {size_t lowmem; void* baseaddr; int highmem; } ;


 int GB ;

void *
vm_map_gpa(struct vmctx *ctx, vm_paddr_t gaddr, size_t len)
{

 if (ctx->lowmem > 0) {
  if (gaddr < ctx->lowmem && len <= ctx->lowmem &&
      gaddr + len <= ctx->lowmem)
   return (ctx->baseaddr + gaddr);
 }

 if (ctx->highmem > 0) {
                if (gaddr >= 4*GB) {
   if (gaddr < 4*GB + ctx->highmem &&
       len <= ctx->highmem &&
       gaddr + len <= 4*GB + ctx->highmem)
    return (ctx->baseaddr + gaddr);
  }
 }

 return (((void*)0));
}
