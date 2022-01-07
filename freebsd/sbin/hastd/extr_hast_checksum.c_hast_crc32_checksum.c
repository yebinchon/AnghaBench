
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int crc ;


 int bcopy (int *,unsigned char*,int) ;
 int crc32 (unsigned char const*,size_t) ;

__attribute__((used)) static void
hast_crc32_checksum(const unsigned char *data, size_t size,
    unsigned char *hash, size_t *hsizep)
{
 uint32_t crc;

 crc = crc32(data, size);

 bcopy(&crc, hash, sizeof(crc));
 *hsizep = sizeof(crc);
}
