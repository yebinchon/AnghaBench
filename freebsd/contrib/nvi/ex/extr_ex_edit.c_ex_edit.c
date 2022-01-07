
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int argc; int iflags; int * cmd; TYPE_1__** argv; } ;
struct TYPE_20__ {int * ep; TYPE_3__* frp; } ;
struct TYPE_19__ {int len; int bp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ FREF ;
typedef TYPE_3__ EXCMD ;


 size_t C_VSPLIT ;
 int E_C_FORCE ;
 int E_NEWSCREEN ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FR_TMPFILE ;
 int FS_FORCE ;
 int FS_SETALT ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int INT2CHAR (TYPE_2__*,int ,int ,char*,size_t) ;
 int SC_FSWITCH ;
 int abort () ;
 int * cmds ;
 int ex_N_edit (TYPE_2__*,TYPE_3__*,TYPE_3__*,int) ;
 TYPE_3__* file_add (TYPE_2__*,char*) ;
 scalar_t__ file_init (TYPE_2__*,TYPE_3__*,int *,int) ;
 scalar_t__ file_m2 (TYPE_2__*,scalar_t__) ;
 int set_alt_name (TYPE_2__*,char*) ;

int
ex_edit(SCR *sp, EXCMD *cmdp)
{
 FREF *frp;
 int attach, setalt;
 char *np;
 size_t nlen;

 switch (cmdp->argc) {
 case 0:







  frp = sp->frp;
  if (sp->ep == ((void*)0) || F_ISSET(frp, FR_TMPFILE)) {
   if ((frp = file_add(sp, ((void*)0))) == ((void*)0))
    return (1);
   attach = 0;
  } else
   attach = 1;
  setalt = 0;
  break;
 case 1:
  INT2CHAR(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1,
    np, nlen);
  if ((frp = file_add(sp, np)) == ((void*)0))
   return (1);
  attach = 0;
  setalt = 1;
  set_alt_name(sp, np);
  break;
 default:
  abort();
 }

 if (F_ISSET(cmdp, E_NEWSCREEN) || cmdp->cmd == &cmds[C_VSPLIT])
  return (ex_N_edit(sp, cmdp, frp, attach));







 if (file_m2(sp, FL_ISSET(cmdp->iflags, E_C_FORCE)))
  return (1);


 if (file_init(sp, frp, ((void*)0), (setalt ? FS_SETALT : 0) |
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
  return (1);

 F_SET(sp, SC_FSWITCH);
 return (0);
}
