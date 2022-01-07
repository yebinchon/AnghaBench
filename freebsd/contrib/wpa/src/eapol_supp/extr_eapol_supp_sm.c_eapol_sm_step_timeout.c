
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eapol_sm_step (void*) ;

__attribute__((used)) static void eapol_sm_step_timeout(void *eloop_ctx, void *timeout_ctx)
{
 eapol_sm_step(timeout_ctx);
}
