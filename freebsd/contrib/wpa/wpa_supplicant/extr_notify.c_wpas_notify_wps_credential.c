
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int wpas_dbus_signal_wps_cred (struct wpa_supplicant*,struct wps_credential const*) ;

void wpas_notify_wps_credential(struct wpa_supplicant *wpa_s,
    const struct wps_credential *cred)
{
 if (wpa_s->p2p_mgmt)
  return;





}
