
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
fake_crc32(unsigned long crc, const void *buff, size_t len)
{
 (void)crc;
 (void)buff;
 (void)len;
 return 0;
}
