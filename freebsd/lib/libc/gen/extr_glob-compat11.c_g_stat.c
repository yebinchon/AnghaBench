
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct freebsd11_stat {int dummy; } ;
struct TYPE_3__ {int gl_flags; int (* gl_stat ) (char*,struct freebsd11_stat*) ;} ;
typedef TYPE_1__ glob11_t ;
typedef int buf ;
typedef int Char ;


 int ENAMETOOLONG ;
 int GLOB_ALTDIRFUNC ;
 scalar_t__ MAXPATHLEN ;
 scalar_t__ MB_LEN_MAX ;
 int errno ;
 int freebsd11_stat (char*,struct freebsd11_stat*) ;
 scalar_t__ g_Ctoc (int *,char*,int) ;
 int stub1 (char*,struct freebsd11_stat*) ;

__attribute__((used)) static int
g_stat(Char *fn, struct freebsd11_stat *sb, glob11_t *pglob)
{
 char buf[MAXPATHLEN + MB_LEN_MAX - 1];

 if (g_Ctoc(fn, buf, sizeof(buf))) {
  errno = ENAMETOOLONG;
  return (-1);
 }
 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  return ((*pglob->gl_stat)(buf, sb));
 return (freebsd11_stat(buf, sb));
}
