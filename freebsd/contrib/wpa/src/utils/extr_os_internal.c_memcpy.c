
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void * os_memcpy(void *dest, const void *src, size_t n)
{
 char *d = dest;
 const char *s = src;
 while (n--)
  *d++ = *s++;
 return dest;
}
