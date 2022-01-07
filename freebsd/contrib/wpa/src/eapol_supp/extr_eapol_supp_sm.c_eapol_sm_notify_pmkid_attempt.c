
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int cached_pmk; } ;


 int MSG_DEBUG ;
 int TRUE ;
 int wpa_printf (int ,char*) ;

void eapol_sm_notify_pmkid_attempt(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "RSN: Trying to use cached PMKSA");
 sm->cached_pmk = TRUE;
}
