
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; } ;


 scalar_t__ WPA_ASSOCIATING ;
 scalar_t__ WPA_AUTHENTICATING ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int sme_assoc_timer ;
 int sme_auth_timer ;

void sme_state_changed(struct wpa_supplicant *wpa_s)
{

 if (wpa_s->wpa_state != WPA_ASSOCIATING)
  eloop_cancel_timeout(sme_assoc_timer, wpa_s, ((void*)0));
 if (wpa_s->wpa_state != WPA_AUTHENTICATING)
  eloop_cancel_timeout(sme_auth_timer, wpa_s, ((void*)0));
}
