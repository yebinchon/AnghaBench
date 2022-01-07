
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_state_machine {TYPE_1__* eap_if; } ;
struct TYPE_2__ {int portEnabled; } ;


 int FALSE ;
 int TRUE ;
 int eapol_auth_step (struct eapol_state_machine*) ;

void ieee802_1x_notify_port_enabled(struct eapol_state_machine *sm,
        int enabled)
{
 if (sm == ((void*)0))
  return;
 sm->eap_if->portEnabled = enabled ? TRUE : FALSE;
 eapol_auth_step(sm);
}
