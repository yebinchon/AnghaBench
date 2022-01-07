
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int ends_with_dirsep(const char *path)
{
    if (*path != '\0')
        path += strlen(path) - 1;







    return *path == '/';
}
