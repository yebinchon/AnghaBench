
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct padlock_sha_ctx {int psc_size; scalar_t__ psc_offset; int * psc_buf; } ;


 int ENOMEM ;
 int MAX (int,scalar_t__) ;
 int M_NOWAIT ;
 int M_PADLOCK ;
 int bcopy (int const*,int *,scalar_t__) ;
 int * realloc (int *,int,int ,int ) ;

__attribute__((used)) static int
padlock_sha_update(struct padlock_sha_ctx *ctx, const uint8_t *buf, uint16_t bufsize)
{

 if (ctx->psc_size - ctx->psc_offset < bufsize) {
  ctx->psc_size = MAX(ctx->psc_size * 2, ctx->psc_size + bufsize);
  ctx->psc_buf = realloc(ctx->psc_buf, ctx->psc_size, M_PADLOCK,
      M_NOWAIT);
  if(ctx->psc_buf == ((void*)0))
   return (ENOMEM);
 }
 bcopy(buf, ctx->psc_buf + ctx->psc_offset, bufsize);
 ctx->psc_offset += bufsize;
 return (0);
}
