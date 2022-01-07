
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCHIQ_STATE_T ;
struct TYPE_3__ {scalar_t__ resume_blocked; int videocore_use_count; scalar_t__ blocked_count; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 TYPE_1__* vchiq_platform_get_arm_state (int *) ;
 int vchiq_platform_videocore_wanted (int *) ;

int
vchiq_videocore_wanted(VCHIQ_STATE_T *state)
{
 VCHIQ_ARM_STATE_T *arm_state = vchiq_platform_get_arm_state(state);
 if (!arm_state)

  return 1;
 else if (arm_state->blocked_count)
  return 1;
 else if (!arm_state->videocore_use_count)

  if (arm_state->resume_blocked)
   return 0;
  else
   return vchiq_platform_videocore_wanted(state);
 else

  return 1;
}
