
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
memcpy(void *dst, const void *src, int len)
{
 const char *s;
 char *d;

 s = src;
 d = dst;

 while (len--)
  *d++ = *s++;
}
