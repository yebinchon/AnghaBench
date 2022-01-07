
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {void* initializing; void* initialize; } ;


 void* FALSE ;
 void* TRUE ;
 int eapol_port_timers_tick ;
 int eapol_sm_step_run (struct eapol_state_machine*) ;
 int eloop_cancel_timeout (int ,int *,struct eapol_state_machine*) ;
 int eloop_register_timeout (int,int ,int ,int *,struct eapol_state_machine*) ;

__attribute__((used)) static void eapol_auth_initialize(struct eapol_state_machine *sm)
{
 sm->initializing = TRUE;


 sm->initialize = TRUE;
 eapol_sm_step_run(sm);
 sm->initialize = FALSE;
 eapol_sm_step_run(sm);
 sm->initializing = FALSE;


 eloop_cancel_timeout(eapol_port_timers_tick, ((void*)0), sm);
 eloop_register_timeout(1, 0, eapol_port_timers_tick, ((void*)0), sm);
}
