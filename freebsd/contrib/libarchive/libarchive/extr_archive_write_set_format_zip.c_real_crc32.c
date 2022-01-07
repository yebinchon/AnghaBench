
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long crc32 (unsigned long,void const*,unsigned int) ;

__attribute__((used)) static unsigned long
real_crc32(unsigned long crc, const void *buff, size_t len)
{
 return crc32(crc, buff, (unsigned int)len);
}
