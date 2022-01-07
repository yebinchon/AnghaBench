
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ last_con_fail_realm_len; int * last_con_fail_realm; int bssid; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int os_free (int *) ;
 int wpa_blacklist_del (struct wpa_supplicant*,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_timeout ;

void wpa_supplicant_cancel_auth_timeout(struct wpa_supplicant *wpa_s)
{
 wpa_dbg(wpa_s, MSG_DEBUG, "Cancelling authentication timeout");
 eloop_cancel_timeout(wpa_supplicant_timeout, wpa_s, ((void*)0));
 wpa_blacklist_del(wpa_s, wpa_s->bssid);
 os_free(wpa_s->last_con_fail_realm);
 wpa_s->last_con_fail_realm = ((void*)0);
 wpa_s->last_con_fail_realm_len = 0;
}
