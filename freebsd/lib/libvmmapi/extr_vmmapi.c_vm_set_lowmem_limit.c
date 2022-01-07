
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int lowmem_limit; } ;



void
vm_set_lowmem_limit(struct vmctx *ctx, uint32_t limit)
{

 ctx->lowmem_limit = limit;
}
