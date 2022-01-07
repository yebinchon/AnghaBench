
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int os_memcmp(const void *s1, const void *s2, size_t n)
{
 const unsigned char *p1 = s1, *p2 = s2;

 if (n == 0)
  return 0;

 while (*p1 == *p2) {
  p1++;
  p2++;
  n--;
  if (n == 0)
   return 0;
 }

 return *p1 - *p2;
}
