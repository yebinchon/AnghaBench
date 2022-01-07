
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct dr {scalar_t__ dr_ts; scalar_t__ dr_gate; scalar_t__ dr_life; TYPE_1__* dr_ifp; } ;
typedef scalar_t__ naddr ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {int int_name; } ;


 size_t MAX_ADS ;
 scalar_t__ SUPPLY_INTERVAL ;
 int age (int ) ;
 int * cur_drp ;
 struct dr* drs ;
 int naddr_ntoa (scalar_t__) ;
 TYPE_2__ now ;
 int rdisc_adv () ;
 int rdisc_sol () ;
 int rdisc_sort () ;
 scalar_t__ rip_sock ;
 scalar_t__ supplier ;
 int trace_act (char*,int ,int ) ;

void
rdisc_age(naddr bad_gate)
{
 time_t sec;
 struct dr *drp;



 if (supplier) {



  if (cur_drp != ((void*)0))
   rdisc_sort();
  rdisc_adv();
  return;
 }





 if (bad_gate != 0) {



  for (drp = drs; drp < &drs[MAX_ADS]; drp++) {
   if (drp->dr_ts == 0)
    continue;






   if (drp->dr_gate == bad_gate) {
    sec = (now.tv_sec - drp->dr_life
           + SUPPLY_INTERVAL);
    if (drp->dr_ts > sec) {
     trace_act("age 0.0.0.0 --> %s via %s",
        naddr_ntoa(drp->dr_gate),
        drp->dr_ifp->int_name);
     drp->dr_ts = sec;
    }
    break;
   }
  }
 }

 rdisc_sol();
 rdisc_sort();







 if (rip_sock < 0 && bad_gate == 0)
  age(0);
}
