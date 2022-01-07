
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int portValid; } ;
typedef int Boolean ;


 int MSG_DEBUG ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*,int ) ;

void eapol_sm_notify_portValid(struct eapol_sm *sm, Boolean valid)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: External notification - "
     "portValid=%d", valid);
 sm->portValid = valid;
 eapol_sm_step(sm);
}
