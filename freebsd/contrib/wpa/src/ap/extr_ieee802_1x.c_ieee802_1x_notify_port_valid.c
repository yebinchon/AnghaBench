
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {int portValid; } ;


 int FALSE ;
 int TRUE ;
 int eapol_auth_step (struct eapol_state_machine*) ;

void ieee802_1x_notify_port_valid(struct eapol_state_machine *sm,
      int valid)
{
 if (sm == ((void*)0))
  return;
 sm->portValid = valid ? TRUE : FALSE;
 eapol_auth_step(sm);
}
