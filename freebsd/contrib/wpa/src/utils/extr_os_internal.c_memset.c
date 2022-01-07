
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void * os_memset(void *s, int c, size_t n)
{
 char *p = s;
 while (n--)
  *p++ = c;
 return s;
}
