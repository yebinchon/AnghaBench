
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int iflags; TYPE_1__** argv; } ;
struct TYPE_19__ {struct TYPE_19__* nextdisp; int argv; int cargv; int gp; } ;
struct TYPE_18__ {scalar_t__ len; int bp; } ;
typedef TYPE_2__ SCR ;
typedef int FREF ;
typedef TYPE_3__ EXCMD ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FS_FORCE ;
 int F_SET (TYPE_2__*,int ) ;
 int INT2CHAR (TYPE_2__*,int ,scalar_t__,char*,size_t) ;
 int SC_SSWITCH ;
 int SC_STATUS_CNT ;
 int ex_buildargv (TYPE_2__*,TYPE_3__*,int *) ;
 int * file_add (TYPE_2__*,char*) ;
 scalar_t__ file_init (TYPE_2__*,int *,int *,int ) ;
 int screen_end (TYPE_2__*) ;
 scalar_t__ screen_init (int ,TYPE_2__*,TYPE_2__**) ;
 int vs_discard (TYPE_2__*,int *) ;
 scalar_t__ vs_split (TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static int
ex_N_next(SCR *sp, EXCMD *cmdp)
{
 SCR *new;
 FREF *frp;
 char *np;
 size_t nlen;


 if (screen_init(sp->gp, sp, &new))
  return (1);
 if (vs_split(sp, new, 0)) {
  (void)screen_end(new);
  return (1);
 }


 INT2CHAR(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, np, nlen);
 if ((frp = file_add(new, np)) == ((void*)0) ||
     file_init(new, frp, ((void*)0),
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0))) {
  (void)vs_discard(new, ((void*)0));
  (void)screen_end(new);
  return (1);
 }


 new->cargv = new->argv = ex_buildargv(sp, cmdp, ((void*)0));


 F_SET(new, SC_STATUS_CNT);


 sp->nextdisp = new;
 F_SET(sp, SC_SSWITCH);

 return (0);
}
