
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int last_auth_timeout_sec; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 scalar_t__ eloop_is_timeout_registered (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;
 int wpa_supplicant_timeout ;

void wpas_auth_timeout_restart(struct wpa_supplicant *wpa_s, int sec_diff)
{
 int new_sec = wpa_s->last_auth_timeout_sec + sec_diff;

 if (eloop_is_timeout_registered(wpa_supplicant_timeout, wpa_s, ((void*)0))) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Authentication timeout restart: %d sec", new_sec);
  eloop_cancel_timeout(wpa_supplicant_timeout, wpa_s, ((void*)0));
  eloop_register_timeout(new_sec, 0, wpa_supplicant_timeout,
           wpa_s, ((void*)0));
 }
}
