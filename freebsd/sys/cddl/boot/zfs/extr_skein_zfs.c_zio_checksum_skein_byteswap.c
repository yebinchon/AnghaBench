
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef int uint64_t ;


 void* BSWAP_64 (void*) ;
 int zio_checksum_skein_native (void const*,int ,void const*,TYPE_1__*) ;

__attribute__((used)) static void
zio_checksum_skein_byteswap(const void *buf, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 zio_cksum_t tmp;

 zio_checksum_skein_native(buf, size, ctx_template, &tmp);
 zcp->zc_word[0] = BSWAP_64(tmp.zc_word[0]);
 zcp->zc_word[1] = BSWAP_64(tmp.zc_word[1]);
 zcp->zc_word[2] = BSWAP_64(tmp.zc_word[2]);
 zcp->zc_word[3] = BSWAP_64(tmp.zc_word[3]);
}
