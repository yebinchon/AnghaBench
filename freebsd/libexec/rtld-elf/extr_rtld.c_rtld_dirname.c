
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int _rtld_error (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
rtld_dirname(const char *path, char *bname)
{
    const char *endp;


    if (path == ((void*)0) || *path == '\0') {
 bname[0] = '.';
 bname[1] = '\0';
 return (0);
    }


    endp = path + strlen(path) - 1;
    while (endp > path && *endp == '/')
 endp--;


    while (endp > path && *endp != '/')
 endp--;


    if (endp == path) {
 bname[0] = *endp == '/' ? '/' : '.';
 bname[1] = '\0';
 return (0);
    } else {
 do {
     endp--;
 } while (endp > path && *endp == '/');
    }

    if (endp - path + 2 > PATH_MAX)
    {
 _rtld_error("Filename is too long: %s", path);
 return(-1);
    }

    strncpy(bname, path, endp - path + 1);
    bname[endp - path + 1] = '\0';
    return (0);
}
