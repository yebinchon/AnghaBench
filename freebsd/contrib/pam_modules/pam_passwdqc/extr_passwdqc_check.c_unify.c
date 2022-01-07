
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isascii (int) ;
 scalar_t__ isupper (int) ;
 char* malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int tolower (int) ;

__attribute__((used)) static char *unify(const char *src)
{
 const char *sptr;
 char *dst, *dptr;
 int c;

 if (!(dst = malloc(strlen(src) + 1)))
  return ((void*)0);

 sptr = src;
 dptr = dst;
 do {
  c = (unsigned char)*sptr;
  if (isascii(c) && isupper(c))
   *dptr++ = tolower(c);
  else
   *dptr++ = *sptr;
 } while (*sptr++);

 return dst;
}
