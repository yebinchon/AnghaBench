
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ clen; struct TYPE_12__* if_name; struct TYPE_12__* o_cp; int rq; int agv_flags; } ;
struct TYPE_13__ {int ecq; TYPE_2__ excmd; } ;
struct TYPE_11__ {TYPE_3__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ RANGE ;
typedef TYPE_3__ GS ;
typedef TYPE_2__ EXCMD ;


 int AGV_ALL ;
 int E_NAMEDISCARD ;
 scalar_t__ FL_ISSET (int ,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 TYPE_2__* SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 TYPE_2__* TAILQ_FIRST (int ) ;
 int TAILQ_REMOVE (int ,TYPE_2__*,int ) ;
 int free (TYPE_2__*) ;
 int q ;

__attribute__((used)) static int
ex_discard(SCR *sp)
{
 GS *gp;
 EXCMD *ecp;
 RANGE *rp;





 for (gp = sp->gp;;) {
  ecp = SLIST_FIRST(gp->ecq);
  if (F_ISSET(ecp, E_NAMEDISCARD))
   free(ecp->if_name);

  if (ecp == &gp->excmd)
   break;
  if (FL_ISSET(ecp->agv_flags, AGV_ALL)) {
   while ((rp = TAILQ_FIRST(ecp->rq)) != ((void*)0)) {
    TAILQ_REMOVE(ecp->rq, rp, q);
    free(rp);
   }
   free(ecp->o_cp);
  }
  SLIST_REMOVE_HEAD(gp->ecq, q);
  free(ecp);
 }

 ecp->if_name = ((void*)0);
 ecp->clen = 0;
 return (0);
}
