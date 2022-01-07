
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int timer_tick_enabled; } ;


 int MSG_DEBUG ;
 int eapol_port_timers_tick ;
 int eloop_cancel_timeout (int ,int *,struct eapol_sm*) ;
 scalar_t__ eloop_register_timeout (int,int ,int ,int *,struct eapol_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eapol_enable_timer_tick(struct eapol_sm *sm)
{
 if (sm->timer_tick_enabled)
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: enable timer tick");
 eloop_cancel_timeout(eapol_port_timers_tick, ((void*)0), sm);
 if (eloop_register_timeout(1, 0, eapol_port_timers_tick, ((void*)0), sm) == 0)
  sm->timer_tick_enabled = 1;
}
