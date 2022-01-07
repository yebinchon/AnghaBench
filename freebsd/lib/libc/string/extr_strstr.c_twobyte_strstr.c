
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static char *twobyte_strstr(const unsigned char *h, const unsigned char *n)
{
 uint16_t nw = n[0]<<8 | n[1], hw = h[0]<<8 | h[1];
 for (h++; *h && hw != nw; hw = hw<<8 | *++h);
 return *h ? (char *)h-1 : 0;
}
