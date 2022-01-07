
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* crc32_table ;

__attribute__((used)) static unsigned long
crc32 (unsigned char *buf, int len, unsigned int crc)
{
  if (!crc32_table[1])
    {

      int i, j;
      unsigned int c;

      for (i = 0; i < 256; i++)
 {
   for (c = i << 24, j = 8; j > 0; --j)
     c = c & 0x80000000 ? (c << 1) ^ 0x04c11db7 : (c << 1);
   crc32_table[i] = c;
 }
    }

  while (len--)
    {
      crc = (crc << 8) ^ crc32_table[((crc >> 24) ^ *buf) & 255];
      buf++;
    }
  return crc;
}
