
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct try_library_args {char const* name; int fd; int buffer; int buflen; int namelen; } ;


 int PATH_MAX ;
 int free (int ) ;
 char* path_enumerate (char const*,int ,char const*,struct try_library_args*) ;
 int strlen (char const*) ;
 int try_library_path ;
 int xmalloc (int ) ;

__attribute__((used)) static char *
search_library_path(const char *name, const char *path,
    const char *refobj_path, int *fdp)
{
    char *p;
    struct try_library_args arg;

    if (path == ((void*)0))
 return ((void*)0);

    arg.name = name;
    arg.namelen = strlen(name);
    arg.buffer = xmalloc(PATH_MAX);
    arg.buflen = PATH_MAX;
    arg.fd = -1;

    p = path_enumerate(path, try_library_path, refobj_path, &arg);
    *fdp = arg.fd;

    free(arg.buffer);

    return (p);
}
