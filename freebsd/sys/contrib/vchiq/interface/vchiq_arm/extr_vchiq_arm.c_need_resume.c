
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCHIQ_STATE_T ;
struct TYPE_3__ {scalar_t__ vc_suspend_state; scalar_t__ vc_resume_state; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 scalar_t__ VC_RESUME_REQUESTED ;
 scalar_t__ VC_SUSPEND_IDLE ;
 TYPE_1__* vchiq_platform_get_arm_state (int *) ;
 scalar_t__ vchiq_videocore_wanted (int *) ;

__attribute__((used)) static inline int
need_resume(VCHIQ_STATE_T *state)
{
 VCHIQ_ARM_STATE_T *arm_state = vchiq_platform_get_arm_state(state);
 return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
   (arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
   vchiq_videocore_wanted(state);
}
