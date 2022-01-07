
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t __arraycount (char const**) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
unsupported(const char *s)
{
 static const char *we[] = {
 };

 if (s == ((void*)0))
  return 0;

 while (*s == '#' || isspace((unsigned char)*s))
  s++;

 for (size_t i = 0; i < __arraycount(we); i++)
  if (strcmp(we[i], s) == 0)
   return 1;
 return 0;
}
