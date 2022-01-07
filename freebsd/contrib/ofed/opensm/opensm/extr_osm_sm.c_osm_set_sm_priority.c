
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {TYPE_2__* p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
struct TYPE_6__ {scalar_t__ sm_priority; } ;
struct TYPE_7__ {scalar_t__ sm_state; TYPE_1__ opt; } ;


 scalar_t__ IB_SMINFO_STATE_STANDBY ;
 int TRAP_144_MASK_SM_PRIORITY_CHANGE ;
 int osm_send_trap144 (TYPE_3__*,int ) ;

void osm_set_sm_priority(osm_sm_t * sm, uint8_t priority)
{
 uint8_t old_pri = sm->p_subn->opt.sm_priority;

 sm->p_subn->opt.sm_priority = priority;

 if (old_pri < priority &&
     sm->p_subn->sm_state == IB_SMINFO_STATE_STANDBY)
  osm_send_trap144(sm, TRAP_144_MASK_SM_PRIORITY_CHANGE);
}
