
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int memflags; } ;



void
vm_set_memflags(struct vmctx *ctx, int flags)
{

 ctx->memflags = flags;
}
