
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static char *
hpdelim2(char **cp, char *delim)
{
 char *s, *old;

 if (cp == ((void*)0) || *cp == ((void*)0))
  return ((void*)0);

 old = s = *cp;
 if (*s == '[') {
  if ((s = strchr(s, ']')) == ((void*)0))
   return ((void*)0);
  else
   s++;
 } else if ((s = strpbrk(s, ":/")) == ((void*)0))
  s = *cp + strlen(*cp);

 switch (*s) {
 case '\0':
  *cp = ((void*)0);
  break;

 case ':':
 case '/':
  if (delim != ((void*)0))
   *delim = *s;
  *s = '\0';
  *cp = s + 1;
  break;

 default:
  return ((void*)0);
 }

 return old;
}
