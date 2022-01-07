
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int iflags; } ;
struct TYPE_16__ {int * cargv; int * argv; } ;
typedef TYPE_1__ SCR ;
typedef int FREF ;
typedef TYPE_2__ EXCMD ;
typedef int CHAR_T ;


 int CHAR2INT (TYPE_1__*,int ,scalar_t__,int *,size_t) ;
 int E_C_FORCE ;
 int E_NEWSCREEN ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FS_ALL ;
 int FS_FORCE ;
 int FS_POSSIBLE ;
 int FS_SETALT ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int M_ERR ;
 int SC_FSWITCH ;
 scalar_t__ argv_exp0 (TYPE_1__*,TYPE_2__*,int *,size_t) ;
 int ex_edit (TYPE_1__*,TYPE_2__*) ;
 int * file_add (TYPE_1__*,int ) ;
 scalar_t__ file_init (TYPE_1__*,int *,int *,int) ;
 scalar_t__ file_m1 (TYPE_1__*,scalar_t__,int) ;
 int msgq (TYPE_1__*,int ,char*) ;
 scalar_t__ strlen (int ) ;

int
ex_prev(SCR *sp, EXCMD *cmdp)
{
 FREF *frp;
 size_t wlen;
 CHAR_T *wp;

 if (sp->cargv == sp->argv) {
  msgq(sp, M_ERR, "112|No previous files to edit");
  return (1);
 }

 if (F_ISSET(cmdp, E_NEWSCREEN)) {
  CHAR2INT(sp, sp->cargv[-1], strlen(sp->cargv[-1]) + 1,
       wp, wlen);
  if (argv_exp0(sp, cmdp, wp, wlen - 1))
   return (1);
  return (ex_edit(sp, cmdp));
 }

 if (file_m1(sp,
     FL_ISSET(cmdp->iflags, E_C_FORCE), FS_ALL | FS_POSSIBLE))
  return (1);

 if ((frp = file_add(sp, sp->cargv[-1])) == ((void*)0))
  return (1);

 if (file_init(sp, frp, ((void*)0), FS_SETALT |
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
  return (1);
 --sp->cargv;

 F_SET(sp, SC_FSWITCH);
 return (0);
}
