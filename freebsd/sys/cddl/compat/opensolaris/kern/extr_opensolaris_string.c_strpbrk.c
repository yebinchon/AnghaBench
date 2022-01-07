
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strpbrk(const char *s, const char *b)
{
 const char *p;

 do {
  for (p = b; *p != '\0' && *p != *s; ++p)
   ;
  if (*p != '\0')
   return ((char *)s);
 } while (*s++);

 return (((void*)0));
}
