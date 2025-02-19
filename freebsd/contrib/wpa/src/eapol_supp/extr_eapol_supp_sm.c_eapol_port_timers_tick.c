
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int authWhile; int heldWhile; int startWhen; int idleWhile; scalar_t__ timer_tick_enabled; } ;


 int MSG_DEBUG ;
 int eapol_sm_step (struct eapol_sm*) ;
 scalar_t__ eloop_register_timeout (int,int ,void (*) (void*,void*),void*,struct eapol_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eapol_port_timers_tick(void *eloop_ctx, void *timeout_ctx)
{
 struct eapol_sm *sm = timeout_ctx;

 if (sm->authWhile > 0) {
  sm->authWhile--;
  if (sm->authWhile == 0)
   wpa_printf(MSG_DEBUG, "EAPOL: authWhile --> 0");
 }
 if (sm->heldWhile > 0) {
  sm->heldWhile--;
  if (sm->heldWhile == 0)
   wpa_printf(MSG_DEBUG, "EAPOL: heldWhile --> 0");
 }
 if (sm->startWhen > 0) {
  sm->startWhen--;
  if (sm->startWhen == 0)
   wpa_printf(MSG_DEBUG, "EAPOL: startWhen --> 0");
 }
 if (sm->idleWhile > 0) {
  sm->idleWhile--;
  if (sm->idleWhile == 0)
   wpa_printf(MSG_DEBUG, "EAPOL: idleWhile --> 0");
 }

 if (sm->authWhile | sm->heldWhile | sm->startWhen | sm->idleWhile) {
  if (eloop_register_timeout(1, 0, eapol_port_timers_tick,
        eloop_ctx, sm) < 0)
   sm->timer_tick_enabled = 0;
 } else {
  wpa_printf(MSG_DEBUG, "EAPOL: disable timer tick");
  sm->timer_tick_enabled = 0;
 }
 eapol_sm_step(sm);
}
