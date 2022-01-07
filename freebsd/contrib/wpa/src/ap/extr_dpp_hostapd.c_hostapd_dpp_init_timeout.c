
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dpp_auth; } ;


 int MSG_DEBUG ;
 int hostapd_dpp_auth_init_next (struct hostapd_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void hostapd_dpp_init_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct hostapd_data *hapd = eloop_ctx;

 if (!hapd->dpp_auth)
  return;
 wpa_printf(MSG_DEBUG, "DPP: Retry initiation after timeout");
 hostapd_dpp_auth_init_next(hapd);
}
