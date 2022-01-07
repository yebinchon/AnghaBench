
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* xo_realloc (int *,int) ;

__attribute__((used)) static char *
xo_strndup (const char *str, ssize_t len)
{
    if (len < 0)
 len = strlen(str);

    char *cp = xo_realloc(((void*)0), len + 1);
    if (cp) {
 memcpy(cp, str, len);
 cp[len] = '\0';
    }

    return cp;
}
