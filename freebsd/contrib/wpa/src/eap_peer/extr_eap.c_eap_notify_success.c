
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int EAP_state; int decision; } ;


 int DECISION_COND_SUCC ;
 int EAP_SUCCESS ;

void eap_notify_success(struct eap_sm *sm)
{
 if (sm) {
  sm->decision = DECISION_COND_SUCC;
  sm->EAP_state = EAP_SUCCESS;
 }
}
