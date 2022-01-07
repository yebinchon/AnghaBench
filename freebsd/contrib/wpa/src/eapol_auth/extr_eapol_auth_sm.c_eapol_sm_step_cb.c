
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {int dummy; } ;


 int eapol_sm_step_run (struct eapol_state_machine*) ;

__attribute__((used)) static void eapol_sm_step_cb(void *eloop_ctx, void *timeout_ctx)
{
 struct eapol_state_machine *sm = eloop_ctx;
 eapol_sm_step_run(sm);
}
