
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; } ;


 int eap_sm_notify_ctrl_attached (int ) ;

void eapol_sm_notify_ctrl_attached(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return;
 eap_sm_notify_ctrl_attached(sm->eap);
}
