
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ctx ;
typedef int abd_t ;
typedef int Skein_512_Ctxt_t ;


 int ASSERT (int ) ;
 int Skein_512_Final (int *,int *) ;
 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int bcopy (void const*,int *,int) ;
 int bzero (int *,int) ;
 int skein_incremental ;

void
abd_checksum_skein_native(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 Skein_512_Ctxt_t ctx;

 ASSERT(ctx_template != ((void*)0));
 bcopy(ctx_template, &ctx, sizeof (ctx));
 (void) abd_iterate_func(abd, 0, size, skein_incremental, &ctx);
 (void) Skein_512_Final(&ctx, (uint8_t *)zcp);
 bzero(&ctx, sizeof (ctx));
}
