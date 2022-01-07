
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int c64 ;


 int Encode64 (int*,int*,int) ;
 int SHA512Transform (int*,int*) ;

__attribute__((used)) static void
SHA512(uint64_t *H, const void *buf, uint64_t size, zio_cksum_t *zcp)
{
 uint64_t c64[2];
 uint8_t pad[256];
 unsigned padsize = size & 127;
 unsigned i, k;


 for (i = 0; i < size - padsize; i += 128)
  SHA512Transform(H, (uint8_t *)buf + i);


 for (k = 0; k < padsize; k++)
  pad[k] = ((uint8_t *)buf)[k+i];

 if (padsize < 112) {
  for (pad[padsize++] = 0x80; padsize < 112; padsize++)
   pad[padsize] = 0;
 } else {
  for (pad[padsize++] = 0x80; padsize < 240; padsize++)
   pad[padsize] = 0;
 }

 c64[0] = 0;
 c64[1] = size << 3;
 Encode64(pad+padsize, c64, sizeof (c64));
 padsize += sizeof (c64);

 for (i = 0; i < padsize; i += 128)
  SHA512Transform(H, pad + i);


 Encode64((uint8_t *)zcp, H, sizeof (uint64_t) * 4);
}
