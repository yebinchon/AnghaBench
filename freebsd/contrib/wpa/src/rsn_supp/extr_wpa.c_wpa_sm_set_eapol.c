
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {struct eapol_sm* eapol; } ;
struct eapol_sm {int dummy; } ;



void wpa_sm_set_eapol(struct wpa_sm *sm, struct eapol_sm *eapol)
{
 if (sm)
  sm->eapol = eapol;
}
