
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum vc_resume_status { ____Placeholder_vc_resume_status } vc_resume_status ;
struct TYPE_4__ {int vc_resume_state; int vc_resume_complete; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 int BUG () ;
 int INIT_COMPLETION (int ) ;





 int VC_SUSPEND_IDLE ;
 int complete_all (int *) ;
 int set_suspend_state (TYPE_1__*,int ) ;

void
set_resume_state(VCHIQ_ARM_STATE_T *arm_state,
 enum vc_resume_status new_state)
{

 arm_state->vc_resume_state = new_state;


 switch (new_state) {
 case 132:
  break;
 case 131:

  INIT_COMPLETION(arm_state->vc_resume_complete);
  break;
 case 129:
  break;
 case 130:
  break;
 case 128:
  complete_all(&arm_state->vc_resume_complete);
  set_suspend_state(arm_state, VC_SUSPEND_IDLE);
  break;
 default:
  BUG();
  break;
 }
}
