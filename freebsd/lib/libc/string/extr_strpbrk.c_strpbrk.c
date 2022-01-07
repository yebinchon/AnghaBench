
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strpbrk(const char *s1, const char *s2)
{
 const char *scanp;
 int c, sc;

 while ((c = *s1++) != 0) {
  for (scanp = s2; (sc = *scanp++) != '\0';)
   if (sc == c)
    return ((char *)(s1 - 1));
 }
 return (((void*)0));
}
