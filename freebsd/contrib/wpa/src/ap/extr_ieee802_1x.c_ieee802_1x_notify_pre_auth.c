
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {int flags; } ;


 int EAPOL_SM_PREAUTH ;

void ieee802_1x_notify_pre_auth(struct eapol_state_machine *sm, int pre_auth)
{
 if (sm == ((void*)0))
  return;
 if (pre_auth)
  sm->flags |= EAPOL_SM_PREAUTH;
 else
  sm->flags &= ~EAPOL_SM_PREAUTH;
}
