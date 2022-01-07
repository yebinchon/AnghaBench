
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _nc_STRCPY (char*,char*,size_t) ;
 int failed (char*) ;
 char* malloc (size_t) ;
 int strlen (char*) ;

__attribute__((used)) static char *
strmalloc(char *s)
{
    size_t need = strlen(s) + 1;
    char *result = malloc(need);
    if (result == 0)
 failed("strmalloc");
    _nc_STRCPY(result, s, need);
    return result;
}
