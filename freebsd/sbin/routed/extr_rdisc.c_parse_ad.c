
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct msg_limit {int dummy; } ;
struct interface {int int_state; int int_rdisc_cnt; int int_mask; int int_net; } ;
struct dr {scalar_t__ dr_gate; scalar_t__ dr_ts; scalar_t__ dr_pref; scalar_t__ dr_recv_pref; scalar_t__ dr_life; struct interface* dr_ifp; } ;
typedef scalar_t__ naddr ;
typedef scalar_t__ n_long ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int IS_SICK ;
 size_t MAX_ADS ;
 int MAX_SOLICITATIONS ;
 scalar_t__ MinMaxAdvertiseInterval ;
 scalar_t__ PREF (scalar_t__,struct interface*) ;
 scalar_t__ RIP_DEFAULT ;
 scalar_t__ UNSIGN_PREF (int ) ;
 int check_dst (scalar_t__) ;
 struct dr* drs ;
 int * ifwithaddr (scalar_t__,int,int ) ;
 int msglim (struct msg_limit*,scalar_t__,char*,int ,int ) ;
 int naddr_ntoa (scalar_t__) ;
 TYPE_1__ now ;
 int ntohl (scalar_t__) ;
 int on_net (scalar_t__,int ,int ) ;
 int trace_pkt (char*) ;

__attribute__((used)) static void
parse_ad(naddr from,
  naddr gate,
  n_long pref,
  u_short life,
  struct interface *ifp)
{
 static struct msg_limit bad_gate;
 struct dr *drp, *new_drp;


 if (gate == RIP_DEFAULT
     || !check_dst(gate)) {
  msglim(&bad_gate, from,"router %s advertising bad gateway %s",
         naddr_ntoa(from),
         naddr_ntoa(gate));
  return;
 }



 if (ifwithaddr(gate, 1, 0) != ((void*)0)) {
  trace_pkt("    discard Router Discovery Ad pointing at us");
  return;
 }
 if (!on_net(gate, ifp->int_net, ifp->int_mask)) {
  trace_pkt("    discard Router Discovery Ad"
     " toward unreachable net");
  return;
 }




 pref = UNSIGN_PREF(ntohl(pref));

 if (pref == 0 || life < MinMaxAdvertiseInterval) {
  pref = 0;
  life = 0;
 }

 for (new_drp = ((void*)0), drp = drs; drp < &drs[MAX_ADS]; drp++) {


  if (drp->dr_gate == gate) {
   new_drp = drp;
   break;
  }

  if (life == 0)
   continue;

  if (drp->dr_ts == 0) {
   new_drp = drp;

  } else if (new_drp == ((void*)0)) {



   if ((!(ifp->int_state & IS_SICK)
        && (drp->dr_ifp->int_state & IS_SICK))
       || (pref > drp->dr_pref
    && !((ifp->int_state ^ drp->dr_ifp->int_state)
         & IS_SICK)))
    new_drp = drp;

  } else if (new_drp->dr_ts != 0) {


   if ((!(new_drp->dr_ifp->int_state & IS_SICK)
        && (drp->dr_ifp->int_state & IS_SICK))
       || (new_drp->dr_pref > drp->dr_pref
    && !((new_drp->dr_ifp->int_state
          ^ drp->dr_ifp->int_state)
         & IS_SICK)))
    new_drp = drp;
  }
 }


 if (new_drp == ((void*)0))
  return;

 new_drp->dr_ifp = ifp;
 new_drp->dr_gate = gate;
 new_drp->dr_ts = now.tv_sec;
 new_drp->dr_life = life;
 new_drp->dr_recv_pref = pref;

 new_drp->dr_pref = PREF(pref,ifp);



 if (!(ifp->int_state & IS_SICK))
  ifp->int_rdisc_cnt = MAX_SOLICITATIONS;
}
