
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ctx ;
typedef int Skein_512_Ctxt_t ;


 int ASSERT (int ) ;
 int Skein_512_Final (int *,int *) ;
 int Skein_512_Update (int *,void const*,int ) ;
 int bcopy (void const*,int *,int) ;
 int bzero (int *,int) ;

__attribute__((used)) static void
zio_checksum_skein_native(const void *buf, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 Skein_512_Ctxt_t ctx;

 ASSERT(ctx_template != ((void*)0));
 bcopy(ctx_template, &ctx, sizeof (ctx));
 (void) Skein_512_Update(&ctx, buf, size);
 (void) Skein_512_Final(&ctx, (uint8_t *)zcp);
 bzero(&ctx, sizeof (ctx));
}
