
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu_kern_ctx {int flags; } ;


 int FPU_KERN_CTX_INUSE ;
 int KASSERT (int,char*) ;
 int M_FPUKERN_CTX ;
 int free (struct fpu_kern_ctx*,int ) ;

void
fpu_kern_free_ctx(struct fpu_kern_ctx *ctx)
{

 KASSERT((ctx->flags & FPU_KERN_CTX_INUSE) == 0, ("free'ing inuse ctx"));

 free(ctx, M_FPUKERN_CTX);
}
