
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {int dummy; } ;


 int eapol_sm_step_cb ;
 int eloop_register_timeout (int ,int ,int ,struct eapol_state_machine*,int *) ;

void eapol_auth_step(struct eapol_state_machine *sm)
{






 eloop_register_timeout(0, 0, eapol_sm_step_cb, sm, ((void*)0));
}
