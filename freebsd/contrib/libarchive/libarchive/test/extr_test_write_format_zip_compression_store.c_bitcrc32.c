
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
bitcrc32(unsigned long c, const void *_p, size_t s)
{
 const unsigned char *p = _p;
 int bitctr;

 if (p == ((void*)0))
  return (0);

 for (; s > 0; --s) {
  c ^= *p++;
  for (bitctr = 8; bitctr > 0; --bitctr) {
   if (c & 1) c = (c >> 1);
   else c = (c >> 1) ^ 0xedb88320;
   c ^= 0x80000000;
  }
 }
 return (c);
}
