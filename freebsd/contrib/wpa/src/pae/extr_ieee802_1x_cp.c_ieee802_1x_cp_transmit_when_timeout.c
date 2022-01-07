
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {scalar_t__ transmit_when; } ;


 int ieee802_1x_cp_step_run (struct ieee802_1x_cp_sm*) ;

__attribute__((used)) static void
ieee802_1x_cp_transmit_when_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct ieee802_1x_cp_sm *sm = eloop_ctx;
 sm->transmit_when = 0;
 ieee802_1x_cp_step_run(sm);
}
