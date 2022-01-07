
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strncat(char * __restrict dst, const char * __restrict src, size_t n)
{
 if (n != 0) {
  char *d = dst;
  const char *s = src;

  while (*d != 0)
   d++;
  do {
   if ((*d = *s++) == 0)
    break;
   d++;
  } while (--n != 0);
  *d = 0;
 }
 return (dst);
}
