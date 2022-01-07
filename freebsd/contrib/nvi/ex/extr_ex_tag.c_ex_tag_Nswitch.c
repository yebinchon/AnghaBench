
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_23__ {struct TYPE_23__* nextdisp; int argv; int cargv; TYPE_10__* frp; TYPE_12__* ep; int gp; } ;
struct TYPE_22__ {TYPE_10__* frp; int fname; } ;
struct TYPE_21__ {int refcnt; } ;
struct TYPE_20__ {int name; int flags; } ;
typedef TYPE_1__ TAG ;
typedef TYPE_2__ SCR ;


 int F_CLR (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int SC_SCR_CENTER ;
 int SC_SCR_TOP ;
 int SC_SSWITCH ;
 int ex_buildargv (TYPE_2__*,int *,int ) ;
 TYPE_10__* file_add (TYPE_2__*,int ) ;
 int file_end (TYPE_2__*,TYPE_12__*,int) ;
 scalar_t__ file_init (TYPE_2__*,TYPE_10__*,int *,int) ;
 int screen_end (TYPE_2__*) ;
 scalar_t__ screen_init (int ,TYPE_2__*,TYPE_2__**) ;
 int vs_discard (TYPE_2__*,int *) ;
 scalar_t__ vs_split (TYPE_2__*,TYPE_2__*,int ) ;

int
ex_tag_Nswitch(SCR *sp, TAG *tp, int force)
{
 SCR *new;


 if (tp->frp == ((void*)0) && (tp->frp = file_add(sp, tp->fname)) == ((void*)0))
  return (1);


 if (screen_init(sp->gp, sp, &new))
  return (1);
 if (vs_split(sp, new, 0)) {
  (void)file_end(new, new->ep, 1);
  (void)screen_end(new);
  return (1);
 }


 if (tp->frp == sp->frp) {

  new->ep = sp->ep;
  ++new->ep->refcnt;

  new->frp = tp->frp;
  new->frp->flags = sp->frp->flags;
 } else if (file_init(new, tp->frp, ((void*)0), force)) {
  (void)vs_discard(new, ((void*)0));
  (void)screen_end(new);
  return (1);
 }


 new->cargv = new->argv = ex_buildargv(sp, ((void*)0), tp->frp->name);


 F_CLR(new, SC_SCR_TOP);
 F_SET(new, SC_SCR_CENTER);


 sp->nextdisp = new;
 F_SET(sp, SC_SSWITCH);

 return (0);
}
