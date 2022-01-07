
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char** argv; char** cargv; int cols; int * gp; } ;
typedef TYPE_1__ SCR ;
typedef int GS ;
typedef int EXCMD ;


 scalar_t__ INTERRUPTED (TYPE_1__*) ;
 int M_ERR ;
 int ex_printf (TYPE_1__*,char*,char*,char*,char*) ;
 int ex_puts (TYPE_1__*,char*) ;
 int msgq (TYPE_1__*,int ,char*) ;
 int strlen (char*) ;

int
ex_args(SCR *sp, EXCMD *cmdp)
{
 GS *gp;
 int cnt, col, len, sep;
 char **ap;

 if (sp->argv == ((void*)0)) {
  (void)msgq(sp, M_ERR, "114|No file list to display");
  return (0);
 }

 gp = sp->gp;
 col = len = sep = 0;
 for (cnt = 1, ap = sp->argv; *ap != ((void*)0); ++ap) {
  col += len = strlen(*ap) + sep + (ap == sp->cargv ? 2 : 0);
  if (col >= sp->cols - 1) {
   col = len;
   sep = 0;
   (void)ex_puts(sp, "\n");
  } else if (cnt != 1) {
   sep = 1;
   (void)ex_puts(sp, " ");
  }
  ++cnt;

  (void)ex_printf(sp, "%s%s%s", ap == sp->cargv ? "[" : "",
      *ap, ap == sp->cargv ? "]" : "");
  if (INTERRUPTED(sp))
   break;
 }
 (void)ex_puts(sp, "\n");
 return (0);
}
