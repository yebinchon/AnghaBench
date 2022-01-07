
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dpp_auth; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpas_dpp_auth_init_next (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_dpp_init_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (!wpa_s->dpp_auth)
  return;
 wpa_printf(MSG_DEBUG, "DPP: Retry initiation after timeout");
 wpas_dpp_auth_init_next(wpa_s);
}
