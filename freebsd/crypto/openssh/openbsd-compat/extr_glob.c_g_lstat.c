
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {int gl_flags; int (* gl_lstat ) (char*,struct stat*) ;} ;
typedef TYPE_1__ glob_t ;
typedef int buf ;
typedef int Char ;


 int GLOB_ALTDIRFUNC ;
 int MAXPATHLEN ;
 scalar_t__ g_Ctoc (int *,char*,int) ;
 int lstat (char*,struct stat*) ;
 int stub1 (char*,struct stat*) ;

__attribute__((used)) static int
g_lstat(Char *fn, struct stat *sb, glob_t *pglob)
{
 char buf[MAXPATHLEN];

 if (g_Ctoc(fn, buf, sizeof(buf)))
  return(-1);
 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  return((*pglob->gl_lstat)(buf, sb));
 return(lstat(buf, sb));
}
