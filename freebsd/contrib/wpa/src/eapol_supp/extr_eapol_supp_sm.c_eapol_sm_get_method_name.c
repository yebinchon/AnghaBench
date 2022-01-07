
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {scalar_t__ SUPP_PAE_state; scalar_t__ suppPortStatus; int eap; } ;


 scalar_t__ Authorized ;
 scalar_t__ SUPP_PAE_AUTHENTICATED ;
 char const* eap_sm_get_method_name (int ) ;

const char * eapol_sm_get_method_name(struct eapol_sm *sm)
{
 if (sm->SUPP_PAE_state != SUPP_PAE_AUTHENTICATED ||
     sm->suppPortStatus != Authorized)
  return ((void*)0);

 return eap_sm_get_method_name(sm->eap);
}
