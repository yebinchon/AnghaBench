
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
isc_string_strlcpy(char *dst, const char *src, size_t size)
{
 char *d = dst;
 const char *s = src;
 size_t n = size;


 if (n != 0U && --n != 0U) {
  do {
   if ((*d++ = *s++) == 0)
    break;
  } while (--n != 0U);
 }


 if (n == 0U) {
  if (size != 0U)
   *d = '\0';
  while (*s++)
   ;
 }

 return(s - src - 1);
}
