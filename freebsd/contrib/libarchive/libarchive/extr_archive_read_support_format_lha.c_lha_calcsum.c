
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char
lha_calcsum(unsigned char sum, const void *pp, int offset, size_t size)
{
 unsigned char const *p = (unsigned char const *)pp;

 p += offset;
 for (;size > 0; --size)
  sum += *p++;
 return (sum);
}
