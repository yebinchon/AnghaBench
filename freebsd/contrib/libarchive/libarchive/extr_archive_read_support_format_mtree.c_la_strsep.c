
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;

__attribute__((used)) static char *
la_strsep(char **sp, const char *sep)
{
 char *p, *s;
 if (sp == ((void*)0) || *sp == ((void*)0) || **sp == '\0')
  return(((void*)0));
 s = *sp;
 p = s + strcspn(s, sep);
 if (*p != '\0')
  *p++ = '\0';
 *sp = p;
 return(s);
}
