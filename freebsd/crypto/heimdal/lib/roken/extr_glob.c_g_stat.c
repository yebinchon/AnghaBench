
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {int gl_flags; int (* gl_stat ) (char*,struct stat*) ;} ;
typedef TYPE_1__ glob_t ;
typedef int Char ;


 int GLOB_ALTDIRFUNC ;
 int MaxPathLen ;
 int g_Ctoc (int *,char*) ;
 int stat (char*,struct stat*) ;
 int stub1 (char*,struct stat*) ;

__attribute__((used)) static int
g_stat(Char *fn, struct stat *sb, glob_t *pglob)
{
 char buf[MaxPathLen];

 g_Ctoc(fn, buf);
 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  return((*pglob->gl_stat)(buf, sb));
 return(stat(buf, sb));
}
