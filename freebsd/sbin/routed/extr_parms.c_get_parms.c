
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parm {char* parm_name; int parm_int_state; scalar_t__ parm_rdisc_pref; scalar_t__ parm_rdisc_int; scalar_t__ parm_adj_inmetric; scalar_t__ parm_adj_outmetric; TYPE_2__* parm_auth; int parm_mask; int parm_net; struct parm* parm_next; } ;
struct interface {int int_state; scalar_t__ int_rdisc_pref; scalar_t__ int_rdisc_int; scalar_t__ int_adj_inmetric; scalar_t__ int_adj_outmetric; scalar_t__ int_d_metric; int int_if_flags; int int_name; TYPE_1__* int_auth; int int_addr; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ DefMaxAdvertiseInterval ;
 scalar_t__ FAKE_METRIC ;
 int GROUP_IS_ADV_OUT ;
 int GROUP_IS_SOL_OUT ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IS_BCAST_RDISC ;
 int IS_NO_ADV_OUT ;
 int IS_NO_RDISC ;
 int IS_NO_RIP ;
 int IS_NO_RIPV1_IN ;
 int IS_NO_RIPV1_OUT ;
 int IS_NO_SOL_OUT ;
 int IS_PASSIVE ;
 int IS_PM_RDISC ;
 int IS_REMOTE ;
 int IS_RIP_IN_OFF (int) ;
 int IS_RIP_OUT_OFF (int) ;
 int MAX_AUTH_KEYS ;
 scalar_t__ RIP_AUTH_NONE ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;
 int msglog (char*,int ) ;
 scalar_t__ on_net (int ,int ,int ) ;
 struct parm* parms ;
 int strcmp (int ,char*) ;

void
get_parms(struct interface *ifp)
{
 static int warned_auth_in, warned_auth_out;
 struct parm *parmp;
 int i, num_passwds = 0;



 for (parmp = parms; parmp != ((void*)0); parmp = parmp->parm_next) {
  if (parmp->parm_name[0] == '\0'
      || !strcmp(ifp->int_name, parmp->parm_name)
      || (parmp->parm_name[0] == '\n'
   && on_net(ifp->int_addr,
      parmp->parm_net, parmp->parm_mask))) {




   ifp->int_state |= parmp->parm_int_state;
   for (i = 0; i < MAX_AUTH_KEYS; i++) {
    if (parmp->parm_auth[0].type == RIP_AUTH_NONE
        || num_passwds >= MAX_AUTH_KEYS)
     break;
    memcpy(&ifp->int_auth[num_passwds++],
           &parmp->parm_auth[i],
           sizeof(ifp->int_auth[0]));
   }
   if (parmp->parm_rdisc_pref != 0)
    ifp->int_rdisc_pref = parmp->parm_rdisc_pref;
   if (parmp->parm_rdisc_int != 0)
    ifp->int_rdisc_int = parmp->parm_rdisc_int;
   if (parmp->parm_adj_inmetric != 0)
       ifp->int_adj_inmetric = parmp->parm_adj_inmetric;
   if (parmp->parm_adj_outmetric != 0)
       ifp->int_adj_outmetric = parmp->parm_adj_outmetric;
  }
 }







 if ((ifp->int_state & IS_PM_RDISC)
     && ifp->int_d_metric == 0)
  ifp->int_d_metric = FAKE_METRIC;

 if (ifp->int_rdisc_int == 0)
  ifp->int_rdisc_int = DefMaxAdvertiseInterval;

 if (!(ifp->int_if_flags & IFF_MULTICAST)
     && !(ifp->int_state & IS_REMOTE))
  ifp->int_state |= IS_BCAST_RDISC;

 if (ifp->int_if_flags & IFF_POINTOPOINT) {
  ifp->int_state |= IS_BCAST_RDISC;



  if (0 == (ifp->int_state & GROUP_IS_SOL_OUT))
   ifp->int_state |= IS_NO_SOL_OUT;
  if (0 == (ifp->int_state & GROUP_IS_ADV_OUT))
   ifp->int_state |= IS_NO_ADV_OUT;
 }

 if (0 != (ifp->int_state & (IS_PASSIVE | IS_REMOTE)))
  ifp->int_state |= IS_NO_RDISC;
 if (ifp->int_state & IS_PASSIVE)
  ifp->int_state |= IS_NO_RIP;

 if (!IS_RIP_IN_OFF(ifp->int_state)
     && ifp->int_auth[0].type != RIP_AUTH_NONE
     && !(ifp->int_state & IS_NO_RIPV1_IN)
     && !warned_auth_in) {
  msglog("Warning: RIPv1 input via %s"
         " will be accepted without authentication",
         ifp->int_name);
  warned_auth_in = 1;
 }
 if (!IS_RIP_OUT_OFF(ifp->int_state)
     && ifp->int_auth[0].type != RIP_AUTH_NONE
     && !(ifp->int_state & IS_NO_RIPV1_OUT)) {
  if (!warned_auth_out) {
   msglog("Warning: RIPv1 output via %s"
          " will be sent without authentication",
          ifp->int_name);
   warned_auth_out = 1;
  }
 }
}
