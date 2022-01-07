
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {size_t lowmem; } ;



size_t
vm_get_lowmem_size(struct vmctx *ctx)
{

 return (ctx->lowmem);
}
