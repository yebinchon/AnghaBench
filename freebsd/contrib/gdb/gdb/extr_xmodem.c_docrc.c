
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* crctab ;

__attribute__((used)) static unsigned short
docrc (unsigned char *p, int len)
{
  unsigned short crc = 0;

  while (len-- > 0)
    crc = (crc << 8) ^ crctab[(crc >> 8) ^ *p++];

  return crc;
}
