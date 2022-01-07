
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ clen; scalar_t__ start; scalar_t__ stop; scalar_t__ range_lno; scalar_t__ cp; scalar_t__ o_cp; scalar_t__ o_clen; int agv_flags; int rq; struct TYPE_16__* if_name; } ;
struct TYPE_17__ {int ecq; TYPE_2__ excmd; } ;
struct TYPE_15__ {scalar_t__ lno; TYPE_3__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ RANGE ;
typedef TYPE_3__ GS ;
typedef TYPE_2__ EXCMD ;


 int AGV_ALL ;
 int AGV_GLOBAL ;
 int AGV_V ;
 int E_NAMEDISCARD ;
 scalar_t__ FL_ISSET (int ,int) ;
 int F_CLR (TYPE_1__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int MEMCPY (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ OOBLNO ;
 int SC_EX_GLOBAL ;
 TYPE_2__* SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 TYPE_2__* TAILQ_FIRST (int ) ;
 int TAILQ_REMOVE (int ,TYPE_2__*,int ) ;
 scalar_t__ db_exist (TYPE_1__*,scalar_t__) ;
 scalar_t__ db_last (TYPE_1__*,scalar_t__*) ;
 int free (TYPE_2__*) ;
 int q ;

__attribute__((used)) static int
ex_load(SCR *sp)
{
 GS *gp;
 EXCMD *ecp;
 RANGE *rp;

 F_CLR(sp, SC_EX_GLOBAL);





 for (gp = sp->gp;;) {
  ecp = SLIST_FIRST(gp->ecq);


  if (F_ISSET(ecp, E_NAMEDISCARD))
   free(ecp->if_name);





  if (ecp == &gp->excmd) {
   ecp->if_name = ((void*)0);
   return (0);
  }
  if (ecp->clen != 0)
   return (0);





  if (FL_ISSET(ecp->agv_flags, AGV_ALL)) {

   while ((rp = TAILQ_FIRST(ecp->rq)) != ((void*)0))
    if (rp->start > rp->stop) {
     TAILQ_REMOVE(ecp->rq, rp, q);
     free(rp);
    } else
     break;


   if (rp != ((void*)0))
    break;


   if (FL_ISSET(ecp->agv_flags,
       AGV_GLOBAL | AGV_V) && ecp->range_lno != OOBLNO)
    if (db_exist(sp, ecp->range_lno))
     sp->lno = ecp->range_lno;
    else {
     if (db_last(sp, &sp->lno))
      return (1);
     if (sp->lno == 0)
      sp->lno = 1;
    }
   free(ecp->o_cp);
  }


  SLIST_REMOVE_HEAD(gp->ecq, q);
  free(ecp);
 }







 ecp->cp = ecp->o_cp;
 MEMCPY(ecp->cp, ecp->cp + ecp->o_clen, ecp->o_clen);
 ecp->clen = ecp->o_clen;
 ecp->range_lno = sp->lno = rp->start++;

 if (FL_ISSET(ecp->agv_flags, AGV_GLOBAL | AGV_V))
  F_SET(sp, SC_EX_GLOBAL);
 return (0);
}
