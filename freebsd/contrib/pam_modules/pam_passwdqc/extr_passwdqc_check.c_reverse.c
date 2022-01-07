
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *reverse(const char *src)
{
 const char *sptr;
 char *dst, *dptr;

 if (!(dst = malloc(strlen(src) + 1)))
  return ((void*)0);

 sptr = &src[strlen(src)];
 dptr = dst;
 while (sptr > src)
  *dptr++ = *--sptr;
 *dptr = '\0';

 return dst;
}
