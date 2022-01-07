
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* ccl_sp; } ;
struct TYPE_20__ {int lno; struct TYPE_20__* nextdisp; struct TYPE_20__* ccl_parent; TYPE_3__* frp; TYPE_1__* ep; TYPE_5__* gp; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {TYPE_3__* frp; TYPE_1__* ep; } ;
struct TYPE_17__ {int refcnt; } ;
typedef TYPE_4__ SCR ;
typedef TYPE_5__ GS ;


 int F_SET (TYPE_4__*,int ) ;
 int OS_STRDUP ;
 int O_FILEENCODING ;
 int SC_COMEDIT ;
 int SC_SSWITCH ;
 int codeset () ;
 int db_last (TYPE_4__*,int*) ;
 int o_set (TYPE_4__*,int ,int ,int ,int ) ;
 int screen_end (TYPE_4__*) ;
 scalar_t__ screen_init (TYPE_5__*,TYPE_4__*,TYPE_4__**) ;
 scalar_t__ v_ecl_init (TYPE_4__*) ;
 scalar_t__ vs_split (TYPE_4__*,TYPE_4__*,int) ;

__attribute__((used)) static int
v_ecl(SCR *sp)
{
 GS *gp;
 SCR *new;


 gp = sp->gp;
 if (gp->ccl_sp == ((void*)0) && v_ecl_init(sp))
  return (1);


 if (screen_init(gp, sp, &new))
  return (1);
 if (vs_split(sp, new, 1)) {
  (void)screen_end(new);
  return (1);
 }


 new->ep = gp->ccl_sp->ep;
 ++new->ep->refcnt;

 new->frp = gp->ccl_sp->frp;
 new->frp->flags = sp->frp->flags;


 (void)db_last(new, &new->lno);
 if (new->lno == 0)
  new->lno = 1;


 sp->ccl_parent = sp;


 F_SET(new, SC_COMEDIT);







 sp->nextdisp = new;
 F_SET(sp, SC_SSWITCH);
 return (0);
}
