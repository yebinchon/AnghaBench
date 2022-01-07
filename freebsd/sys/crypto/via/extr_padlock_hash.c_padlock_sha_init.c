
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_sha_ctx {scalar_t__ psc_size; scalar_t__ psc_offset; int * psc_buf; } ;



__attribute__((used)) static void
padlock_sha_init(struct padlock_sha_ctx *ctx)
{

 ctx->psc_buf = ((void*)0);
 ctx->psc_offset = 0;
 ctx->psc_size = 0;
}
