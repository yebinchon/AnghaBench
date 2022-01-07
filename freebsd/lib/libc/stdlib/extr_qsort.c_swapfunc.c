
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
swapfunc(char *a, char *b, size_t es)
{
 char t;

 do {
  t = *a;
  *a++ = *b;
  *b++ = t;
 } while (--es > 0);
}
