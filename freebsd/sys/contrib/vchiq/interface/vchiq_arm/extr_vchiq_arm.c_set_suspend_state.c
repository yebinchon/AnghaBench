
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum vc_suspend_status { ____Placeholder_vc_suspend_status } vc_suspend_status ;
struct TYPE_4__ {int vc_suspend_state; int vc_suspend_complete; int vc_resume_complete; int vc_resume_state; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 int BUG () ;
 int INIT_COMPLETION (int ) ;
 int VC_RESUME_IDLE ;
 int VC_RESUME_RESUMED ;







 int complete_all (int *) ;
 int set_resume_state (TYPE_1__*,int ) ;

void
set_suspend_state(VCHIQ_ARM_STATE_T *arm_state,
 enum vc_suspend_status new_state)
{

 arm_state->vc_suspend_state = new_state;


 switch (new_state) {
 case 133:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 case 130:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 case 134:
  complete_all(&arm_state->vc_suspend_complete);
  arm_state->vc_resume_state = VC_RESUME_RESUMED;
  complete_all(&arm_state->vc_resume_complete);
  break;
 case 132:

  INIT_COMPLETION(arm_state->vc_suspend_complete);
  break;
 case 129:
  break;
 case 131:
  set_resume_state(arm_state, VC_RESUME_IDLE);
  break;
 case 128:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 default:
  BUG();
  break;
 }
}
