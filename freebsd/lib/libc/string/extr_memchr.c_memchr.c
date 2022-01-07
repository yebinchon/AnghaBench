
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t ALIGN ;
 int HASZERO (size_t const) ;
 int ONES ;
 size_t SS ;

void *memchr(const void *src, int c, size_t n)
{
 const unsigned char *s = src;
 c = (unsigned char)c;

 for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--);
 if (n && *s != c) {
  typedef size_t __attribute__((__may_alias__)) word;
  const word *w;
  size_t k = ONES * c;
  for (w = (const void *)s; n>=SS && !HASZERO(*w^k); w++, n-=SS);
  s = (const void *)w;
 }

 for (; n && *s != c; s++, n--);
 return n ? (void *)s : 0;
}
