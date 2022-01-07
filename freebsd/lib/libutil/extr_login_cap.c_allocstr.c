
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* internal_string ;
 size_t internal_stringsz ;
 char* realloc (char*,size_t) ;
 char* strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
allocstr(const char *str)
{
    char *p;

    size_t sz = strlen(str) + 1;
    if (sz <= internal_stringsz)
 p = strcpy(internal_string, str);
    else if ((p = realloc(internal_string, sz)) != ((void*)0)) {
 internal_stringsz = sz;
 internal_string = strcpy(p, str);
    }
    return p;
}
