
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_pathc; int gl_offs; char** gl_pathv; int gl_flags; } ;
typedef TYPE_1__ glob_t ;
typedef int Char ;


 size_t ARG_MAX ;
 int GLOB_LIMIT ;
 int GLOB_NOSPACE ;
 scalar_t__ errno ;
 int g_Ctoc (int const*,char*) ;
 void* malloc (size_t) ;
 void* realloc (char**,size_t) ;

__attribute__((used)) static int
globextend(const Char *path, glob_t *pglob, size_t *limit)
{
 char **pathv;
 int i;
 size_t newsize, len;
 char *copy;
 const Char *p;

 newsize = sizeof(*pathv) * (2 + pglob->gl_pathc + pglob->gl_offs);
 pathv = pglob->gl_pathv ?
      realloc(pglob->gl_pathv, newsize) :
      malloc(newsize);
 if (pathv == ((void*)0))
  return(GLOB_NOSPACE);

 if (pglob->gl_pathv == ((void*)0) && pglob->gl_offs > 0) {

  pathv += pglob->gl_offs;
  for (i = pglob->gl_offs; --i >= 0; )
   *--pathv = ((void*)0);
 }
 pglob->gl_pathv = pathv;

 for (p = path; *p++;)
  continue;
 len = (size_t)(p - path);
 *limit += len;
 if ((copy = malloc(len)) != ((void*)0)) {
  g_Ctoc(path, copy);
  pathv[pglob->gl_offs + pglob->gl_pathc++] = copy;
 }
 pathv[pglob->gl_offs + pglob->gl_pathc] = ((void*)0);

 if ((pglob->gl_flags & GLOB_LIMIT) && (newsize + *limit) >= ARG_MAX) {
  errno = 0;
  return(GLOB_NOSPACE);
 }

 return(copy == ((void*)0) ? GLOB_NOSPACE : 0);
}
