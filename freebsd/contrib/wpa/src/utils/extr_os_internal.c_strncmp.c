
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int os_strncmp(const char *s1, const char *s2, size_t n)
{
 if (n == 0)
  return 0;

 while (*s1 == *s2) {
  if (*s1 == '\0')
   break;
  s1++;
  s2++;
  n--;
  if (n == 0)
   return 0;
 }

 return *s1 - *s2;
}
