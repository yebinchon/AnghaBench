
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct interface {scalar_t__ int_rdisc_cnt; int int_name; TYPE_1__ int_rdisc_timer; } ;
struct dr {scalar_t__ dr_ts; struct interface* dr_ifp; scalar_t__ dr_life; int dr_gate; } ;
typedef int naddr ;


 size_t MAX_ADS ;
 scalar_t__ MAX_SOLICITATIONS ;
 int del_redirects (int ,int ) ;
 struct dr* drs ;
 int naddr_ntoa (int ) ;
 int rdisc_sol () ;
 int trace_act (char*,int ,int ,...) ;

__attribute__((used)) static void
del_rdisc(struct dr *drp)
{
 struct interface *ifp;
 naddr gate;
 int i;


 del_redirects(gate = drp->dr_gate, 0);
 drp->dr_ts = 0;
 drp->dr_life = 0;




 i = 0;
 ifp = drp->dr_ifp;
 for (drp = drs; drp < &drs[MAX_ADS]; drp++) {
  if (drp->dr_ts != 0
      && drp->dr_ifp == ifp)
   i++;
 }





 if (i != 0) {
  trace_act("discovered router %s via %s"
     " is bad--have %d remaining",
     naddr_ntoa(gate), ifp->int_name, i);
 } else if (ifp->int_rdisc_cnt >= MAX_SOLICITATIONS) {
  trace_act("last discovered router %s via %s"
     " is bad--re-solicit",
     naddr_ntoa(gate), ifp->int_name);
  ifp->int_rdisc_cnt = 0;
  ifp->int_rdisc_timer.tv_sec = 0;
  rdisc_sol();
 } else {
  trace_act("last discovered router %s via %s"
     " is bad--wait to solicit",
     naddr_ntoa(gate), ifp->int_name);
 }
}
