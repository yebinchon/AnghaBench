
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static void
trim_trailing_slash(char * path)
{
    size_t l;

    l = strlen(path);
    while (l > 0 && (path[l - 1] == '/'



               )) {
        path[--l] = '\0';
    }
}
