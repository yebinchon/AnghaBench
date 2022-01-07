
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int EAP_state; } ;


 int EAP_SUCCESS ;

void eap_sm_notify_cached(struct eap_sm *sm)
{
 if (sm == ((void*)0))
  return;

 sm->EAP_state = EAP_SUCCESS;
}
