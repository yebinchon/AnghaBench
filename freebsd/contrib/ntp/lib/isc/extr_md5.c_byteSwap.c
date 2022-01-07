
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint32_t ;



__attribute__((used)) static void
byteSwap(isc_uint32_t *buf, unsigned words)
{
 unsigned char *p = (unsigned char *)buf;

 do {
  *buf++ = (isc_uint32_t)((unsigned)p[3] << 8 | p[2]) << 16 |
   ((unsigned)p[1] << 8 | p[0]);
  p += 4;
 } while (--words);
}
