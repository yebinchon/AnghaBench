
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static char *threebyte_memmem(const unsigned char *h, size_t k, const unsigned char *n)
{
 uint32_t nw = n[0]<<24 | n[1]<<16 | n[2]<<8;
 uint32_t hw = h[0]<<24 | h[1]<<16 | h[2]<<8;
 for (h+=3, k-=3; k; k--, hw = (hw|*h++)<<8)
  if (hw == nw) return (char *)h-3;
 return hw == nw ? (char *)h-3 : 0;
}
