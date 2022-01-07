
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_flags; int * (* gl_opendir ) (char*) ;} ;
typedef TYPE_1__ glob_t ;
typedef int buf ;
typedef int DIR ;
typedef int Char ;


 int GLOB_ALTDIRFUNC ;
 int MAXPATHLEN ;
 scalar_t__ g_Ctoc (int *,char*,int) ;
 int * opendir (char*) ;
 int strlcpy (char*,char*,int) ;
 int * stub1 (char*) ;

__attribute__((used)) static DIR *
g_opendir(Char *str, glob_t *pglob)
{
 char buf[MAXPATHLEN];

 if (!*str)
  strlcpy(buf, ".", sizeof buf);
 else {
  if (g_Ctoc(str, buf, sizeof(buf)))
   return(((void*)0));
 }

 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  return((*pglob->gl_opendir)(buf));

 return(opendir(buf));
}
