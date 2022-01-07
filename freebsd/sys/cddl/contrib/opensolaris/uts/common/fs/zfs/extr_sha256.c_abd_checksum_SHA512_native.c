
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int abd_t ;
typedef int SHA512_CTX ;


 int SHA512_256_Final (unsigned char*,int *) ;
 int SHA512_256_Init (int *) ;
 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int sha512_incremental ;

void
abd_checksum_SHA512_native(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 SHA512_CTX ctx;

 SHA512_256_Init(&ctx);
 (void) abd_iterate_func(abd, 0, size, sha512_incremental, &ctx);
 SHA512_256_Final((unsigned char *)zcp, &ctx);
}
