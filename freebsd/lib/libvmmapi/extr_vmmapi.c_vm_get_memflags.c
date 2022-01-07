
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int memflags; } ;



int
vm_get_memflags(struct vmctx *ctx)
{

 return (ctx->memflags);
}
