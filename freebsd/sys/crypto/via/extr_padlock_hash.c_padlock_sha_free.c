
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_sha_ctx {scalar_t__ psc_size; scalar_t__ psc_offset; int * psc_buf; } ;


 int M_PADLOCK ;
 int free (int *,int ) ;

__attribute__((used)) static void
padlock_sha_free(struct padlock_sha_ctx *ctx)
{

 if (ctx->psc_buf != ((void*)0)) {

  free(ctx->psc_buf, M_PADLOCK);
  ctx->psc_buf = ((void*)0);
  ctx->psc_offset = 0;
  ctx->psc_size = 0;
 }
}
