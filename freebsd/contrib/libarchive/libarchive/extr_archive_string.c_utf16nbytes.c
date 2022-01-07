
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
utf16nbytes(const void *_p, size_t n)
{
 size_t s;
 const char *p, *pp;

 if (_p == ((void*)0))
  return (0);
 p = (const char *)_p;


 s = 0;
 pp = p;
 n >>= 1;
 while (s < n && (pp[0] || pp[1])) {
  pp += 2;
  s++;
 }
 return (s<<1);
}
