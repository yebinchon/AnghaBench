
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fnmatch (char const*,char const*,int) ;

int
login_strinlist(const char **list, char const *str, int flags)
{
    int rc = 0;

    if (str != ((void*)0) && *str != '\0') {
 int i = 0;

 while (rc == 0 && list[i] != ((void*)0))
     rc = fnmatch(list[i++], str, flags) == 0;
    }
    return rc;
}
