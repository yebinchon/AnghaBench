
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_pathc; int gl_offs; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 char* strsave (char const*) ;
 char** xrealloc (char**,size_t) ;

__attribute__((used)) static void
globextend(const char *path, glob_t *pglob)
{
    char **pathv;
    int i;
    size_t newsize;

    newsize = sizeof(*pathv) * (2 + pglob->gl_pathc + pglob->gl_offs);
    pathv = xrealloc(pglob->gl_pathv, newsize);

    if (pglob->gl_pathv == ((void*)0) && pglob->gl_offs > 0) {

 pathv += pglob->gl_offs;
 for (i = pglob->gl_offs; --i >= 0;)
     *--pathv = ((void*)0);
    }
    pglob->gl_pathv = pathv;

    pathv[pglob->gl_offs + pglob->gl_pathc++] = strsave(path);
    pathv[pglob->gl_offs + pglob->gl_pathc] = ((void*)0);
}
