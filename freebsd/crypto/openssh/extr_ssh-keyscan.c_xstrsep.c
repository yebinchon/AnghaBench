
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;

__attribute__((used)) static char *
xstrsep(char **str, const char *delim)
{
 char *s, *e;

 if (!**str)
  return (((void*)0));

 s = *str;
 e = s + strcspn(s, delim);

 if (*e != '\0')
  *e++ = '\0';
 *str = e;

 return (s);
}
