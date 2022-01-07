
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {scalar_t__ startWhen; int userLogoff; } ;
typedef int Boolean ;


 int eapol_sm_step (struct eapol_sm*) ;

void eapol_sm_notify_logoff(struct eapol_sm *sm, Boolean logoff)
{
 if (sm) {
  sm->userLogoff = logoff;
  if (!logoff) {

   sm->startWhen = 0;
  }
  eapol_sm_step(sm);
 }
}
