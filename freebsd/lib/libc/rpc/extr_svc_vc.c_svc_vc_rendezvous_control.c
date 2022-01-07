
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct cf_rendezvous {int maxrec; } ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int FALSE ;


 int TRUE ;

__attribute__((used)) static bool_t
svc_vc_rendezvous_control(SVCXPRT *xprt, const u_int rq, void *in)
{
 struct cf_rendezvous *cfp;

 cfp = (struct cf_rendezvous *)xprt->xp_p1;
 if (cfp == ((void*)0))
  return (FALSE);
 switch (rq) {
  case 129:
   *(int *)in = cfp->maxrec;
   break;
  case 128:
   cfp->maxrec = *(int *)in;
   break;
  default:
   return (FALSE);
 }
 return (TRUE);
}
