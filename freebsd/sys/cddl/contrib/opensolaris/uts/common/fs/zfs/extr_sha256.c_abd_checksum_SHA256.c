
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef int uint64_t ;
typedef int abd_t ;
typedef int SHA256_CTX ;


 void* BE_64 (void*) ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int sha256_incremental ;

void
abd_checksum_SHA256(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 SHA256_CTX ctx;
 zio_cksum_t tmp;

 SHA256_Init(&ctx);
 (void) abd_iterate_func(abd, 0, size, sha256_incremental, &ctx);
 SHA256_Final((unsigned char *)&tmp, &ctx);
 zcp->zc_word[0] = BE_64(tmp.zc_word[0]);
 zcp->zc_word[1] = BE_64(tmp.zc_word[1]);
 zcp->zc_word[2] = BE_64(tmp.zc_word[2]);
 zcp->zc_word[3] = BE_64(tmp.zc_word[3]);
}
