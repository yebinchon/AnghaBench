
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char** STR_environ ;
 int StrQcmp (char*,char*) ;
 size_t Strlen (char*) ;

Char *
tgetenv(Char *str)
{
    Char **var;
    size_t len;
    int res;

    len = Strlen(str);

    for (var = STR_environ; var != ((void*)0) && *var != ((void*)0); var++)
 if (Strlen(*var) >= len && (*var)[len] == '=') {


     (*var)[len] = '\0';
     res = StrQcmp(*var, str);


     (*var)[len] = '=';
     if (res == 0)
  return (&((*var)[len + 1]));
 }
    return (((void*)0));
}
