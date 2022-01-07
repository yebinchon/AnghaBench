
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

unsigned int
strcount(const char *source, const char *find)
{
 const char *p = source;
 size_t flen;
 unsigned int n = 0;


 if (source == ((void*)0) || find == ((void*)0))
  return (0);


 flen = strlen(find);
 if (strlen(source) == 0 || flen == 0)
  return (0);


 while (*p != '\0') {
  if (strncmp(p, find, flen) == 0) {
   p += flen;
   n++;
  } else
   p++;
 }

 return (n);
}
