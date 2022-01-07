
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_AUTHENTICATING ;
 int sme_deauth (struct wpa_supplicant*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static void sme_auth_timer(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 if (wpa_s->wpa_state == WPA_AUTHENTICATING) {
  wpa_msg(wpa_s, MSG_DEBUG, "SME: Authentication timeout");
  sme_deauth(wpa_s);
 }
}
