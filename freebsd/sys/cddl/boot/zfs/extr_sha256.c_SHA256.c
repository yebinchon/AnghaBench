
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int SHA256Transform (int*,int*) ;
 int ZIO_SET_CHECKSUM (int *,int,int,int,int) ;

__attribute__((used)) static void
SHA256(uint32_t *H, const void *buf, uint64_t size, zio_cksum_t *zcp)
{
 uint8_t pad[128];
 unsigned padsize = size & 63;
 unsigned i, k;


 for (i = 0; i < size - padsize; i += 64)
  SHA256Transform(H, (uint8_t *)buf + i);


 for (k = 0; k < padsize; k++)
  pad[k] = ((uint8_t *)buf)[k+i];

 for (pad[padsize++] = 0x80; (padsize & 63) != 56; padsize++)
  pad[padsize] = 0;

 for (i = 0; i < 8; i++)
  pad[padsize++] = (size << 3) >> (56 - 8 * i);

 for (i = 0; i < padsize; i += 64)
  SHA256Transform(H, pad + i);

 ZIO_SET_CHECKSUM(zcp,
     (uint64_t)H[0] << 32 | H[1],
     (uint64_t)H[2] << 32 | H[3],
     (uint64_t)H[4] << 32 | H[5],
     (uint64_t)H[6] << 32 | H[7]);
}
