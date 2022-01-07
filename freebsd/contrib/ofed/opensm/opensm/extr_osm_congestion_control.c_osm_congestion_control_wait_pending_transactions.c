
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int congestion_control; } ;
struct TYPE_5__ {TYPE_1__ opt; } ;
struct TYPE_6__ {unsigned int outstanding_mads; int outstanding_mads_done_event; } ;
struct osm_opensm {TYPE_2__ subn; TYPE_3__ cc; } ;
typedef TYPE_3__ osm_congestion_control_t ;


 int EVENT_NO_TIMEOUT ;
 int TRUE ;
 int cl_event_wait_on (int *,int ,int ) ;
 int osm_exit_flag ;

int osm_congestion_control_wait_pending_transactions(struct osm_opensm *p_osm)
{
 osm_congestion_control_t *cc = &p_osm->cc;

 if (!p_osm->subn.opt.congestion_control)
  return 0;

 while (1) {
  unsigned count = cc->outstanding_mads;
  if (!count || osm_exit_flag)
   break;
  cl_event_wait_on(&cc->outstanding_mads_done_event,
     EVENT_NO_TIMEOUT,
     TRUE);
 }

 return osm_exit_flag;
}
