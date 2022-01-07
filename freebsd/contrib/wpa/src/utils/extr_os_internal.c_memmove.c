
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_memcpy (void*,void const*,size_t) ;

void * os_memmove(void *dest, const void *src, size_t n)
{
 if (dest < src)
  os_memcpy(dest, src, n);
 else {

  char *d = (char *) dest + n;
  const char *s = (const char *) src + n;
  while (n--)
   *--d = *--s;
 }
 return dest;
}
