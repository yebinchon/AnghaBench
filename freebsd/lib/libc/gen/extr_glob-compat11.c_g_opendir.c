
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_flags; int * (* gl_opendir ) (char*) ;} ;
typedef TYPE_1__ glob11_t ;
typedef int buf ;
typedef int DIR ;
typedef scalar_t__ Char ;


 int ENAMETOOLONG ;
 scalar_t__ EOS ;
 int GLOB_ALTDIRFUNC ;
 scalar_t__ MAXPATHLEN ;
 scalar_t__ MB_LEN_MAX ;
 int errno ;
 scalar_t__ g_Ctoc (scalar_t__*,char*,int) ;
 int * opendir (char*) ;
 int strcpy (char*,char*) ;
 int * stub1 (char*) ;

__attribute__((used)) static DIR *
g_opendir(Char *str, glob11_t *pglob)
{
 char buf[MAXPATHLEN + MB_LEN_MAX - 1];

 if (*str == EOS)
  strcpy(buf, ".");
 else {
  if (g_Ctoc(str, buf, sizeof(buf))) {
   errno = ENAMETOOLONG;
   return (((void*)0));
  }
 }

 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  return ((*pglob->gl_opendir)(buf));

 return (opendir(buf));
}
