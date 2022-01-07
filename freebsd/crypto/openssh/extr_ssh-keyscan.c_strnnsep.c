
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrsep (char**,char*) ;

__attribute__((used)) static char *
strnnsep(char **stringp, char *delim)
{
 char *tok;

 do {
  tok = xstrsep(stringp, delim);
 } while (tok && *tok == '\0');
 return (tok);
}
