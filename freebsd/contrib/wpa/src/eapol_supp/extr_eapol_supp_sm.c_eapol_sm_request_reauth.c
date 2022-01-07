
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {scalar_t__ SUPP_PAE_state; } ;


 scalar_t__ SUPP_PAE_AUTHENTICATED ;
 int eapol_sm_txStart (struct eapol_sm*) ;

void eapol_sm_request_reauth(struct eapol_sm *sm)
{
 if (sm == ((void*)0) || sm->SUPP_PAE_state != SUPP_PAE_AUTHENTICATED)
  return;
 eapol_sm_txStart(sm);
}
