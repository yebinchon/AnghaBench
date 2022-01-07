
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
stpncpy(char * __restrict dst, const char * __restrict src, size_t n)
{

 for (; n--; dst++, src++) {
  if (!(*dst = *src)) {
   char *ret = dst;
   while (n--)
    *++dst = '\0';
   return (ret);
  }
 }
 return (dst);
}
