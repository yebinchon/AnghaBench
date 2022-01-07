
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int iflags; int * cmd; } ;
struct TYPE_25__ {int name; int flags; } ;
struct TYPE_24__ {struct TYPE_24__* nextdisp; int argv; int cargv; int cno; int lno; TYPE_3__* frp; TYPE_1__* ep; int gp; } ;
struct TYPE_23__ {int refcnt; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ FREF ;
typedef TYPE_4__ EXCMD ;


 size_t C_VSPLIT ;
 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FS_FORCE ;
 int F_SET (TYPE_2__*,int ) ;
 int OS_STRDUP ;
 int O_FILEENCODING ;
 int O_STR (TYPE_2__*,int ) ;
 int SC_SSWITCH ;
 int * cmds ;
 int conv_enc (TYPE_2__*,int ,int ) ;
 int ex_buildargv (TYPE_2__*,int *,int ) ;
 scalar_t__ file_init (TYPE_2__*,TYPE_3__*,int *,int ) ;
 int o_set (TYPE_2__*,int ,int ,int ,int ) ;
 int screen_end (TYPE_2__*) ;
 scalar_t__ screen_init (int ,TYPE_2__*,TYPE_2__**) ;
 int vs_discard (TYPE_2__*,int *) ;
 scalar_t__ vs_split (TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ vs_vsplit (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int
ex_N_edit(SCR *sp, EXCMD *cmdp, FREF *frp, int attach)
{
 SCR *new;


 if (screen_init(sp->gp, sp, &new))
  return (1);
 if ((cmdp->cmd == &cmds[C_VSPLIT] && vs_vsplit(sp, new)) ||
     (cmdp->cmd != &cmds[C_VSPLIT] && vs_split(sp, new, 0))) {
  (void)screen_end(new);
  return (1);
 }


 if (attach) {

  new->ep = sp->ep;
  ++new->ep->refcnt;

  new->frp = frp;
  new->frp->flags = sp->frp->flags;

  new->lno = sp->lno;
  new->cno = sp->cno;







 } else if (file_init(new, frp, ((void*)0),
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0))) {
  (void)vs_discard(new, ((void*)0));
  (void)screen_end(new);
  return (1);
 }


 new->cargv = new->argv = ex_buildargv(sp, ((void*)0), frp->name);


 sp->nextdisp = new;
 F_SET(sp, SC_SSWITCH);

 return (0);
}
