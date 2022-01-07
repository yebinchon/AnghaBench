
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_subn; int sweep_timer; } ;
typedef TYPE_3__ osm_sm_t ;
struct TYPE_5__ {int sweep_interval; } ;
struct TYPE_6__ {scalar_t__ sm_state; TYPE_1__ opt; } ;


 scalar_t__ IB_SMINFO_STATE_DISCOVERING ;
 scalar_t__ IB_SMINFO_STATE_MASTER ;
 int OSM_SIGNAL_SWEEP ;
 int cl_timer_start (int *,int) ;
 int osm_sm_signal (TYPE_3__*,int ) ;

__attribute__((used)) static void sm_sweep(void *arg)
{
 osm_sm_t *sm = arg;


 if (sm->p_subn->sm_state == IB_SMINFO_STATE_MASTER ||
     sm->p_subn->sm_state == IB_SMINFO_STATE_DISCOVERING)
  osm_sm_signal(sm, OSM_SIGNAL_SWEEP);
 cl_timer_start(&sm->sweep_timer, sm->p_subn->opt.sweep_interval * 1000);
}
