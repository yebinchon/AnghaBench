
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {size_t highmem; } ;



size_t
vm_get_highmem_size(struct vmctx *ctx)
{

 return (ctx->highmem);
}
