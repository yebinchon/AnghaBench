
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface {int dummy; } ;
struct dr {scalar_t__ dr_life; scalar_t__ dr_ts; scalar_t__ dr_recv_pref; struct interface* dr_ifp; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 size_t MAX_ADS ;
 struct dr* drs ;
 TYPE_1__ rdisc_timer ;

void
if_bad_rdisc(struct interface *ifp)
{
 struct dr *drp;

 for (drp = drs; drp < &drs[MAX_ADS]; drp++) {
  if (drp->dr_ifp != ifp)
   continue;
  drp->dr_recv_pref = 0;
  drp->dr_ts = 0;
  drp->dr_life = 0;
 }


 rdisc_timer.tv_sec = 0;
}
