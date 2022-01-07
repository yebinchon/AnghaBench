
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {scalar_t__ portEnabled; int force_authorized_update; } ;
typedef scalar_t__ Boolean ;


 int MSG_DEBUG ;
 int TRUE ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*,scalar_t__) ;

void eapol_sm_notify_portEnabled(struct eapol_sm *sm, Boolean enabled)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: External notification - "
     "portEnabled=%d", enabled);
 if (sm->portEnabled != enabled)
  sm->force_authorized_update = TRUE;
 sm->portEnabled = enabled;
 eapol_sm_step(sm);
}
