
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static char *fourbyte_strstr(const unsigned char *h, const unsigned char *n)
{
 uint32_t nw = n[0]<<24 | n[1]<<16 | n[2]<<8 | n[3];
 uint32_t hw = h[0]<<24 | h[1]<<16 | h[2]<<8 | h[3];
 for (h+=3; *h && hw != nw; hw = hw<<8 | *++h);
 return *h ? (char *)h-3 : 0;
}
