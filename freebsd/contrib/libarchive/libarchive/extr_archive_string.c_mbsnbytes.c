
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
mbsnbytes(const void *_p, size_t n)
{
 size_t s;
 const char *p, *pp;

 if (_p == ((void*)0))
  return (0);
 p = (const char *)_p;


 s = 0;
 pp = p;
 while (s < n && *pp) {
  pp++;
  s++;
 }
 return (s);
}
