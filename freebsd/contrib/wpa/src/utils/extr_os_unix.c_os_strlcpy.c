
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t os_strlcpy(char *dest, const char *src, size_t siz)
{
 const char *s = src;
 size_t left = siz;

 if (left) {

  while (--left != 0) {
   if ((*dest++ = *s++) == '\0')
    break;
  }
 }

 if (left == 0) {

  if (siz != 0)
   *dest = '\0';
  while (*s++)
   ;
 }

 return s - src - 1;
}
