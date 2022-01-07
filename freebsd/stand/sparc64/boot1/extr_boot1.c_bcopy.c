
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bcopy(const void *src, void *dst, size_t len)
{
 const char *s = src;
 char *d = dst;

 while (len-- != 0)
  *d++ = *s++;
}
